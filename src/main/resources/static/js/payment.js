var ctx = getContextPath();

function getContextPath() {
    return sessionStorage.getItem("contextpath");
}

var productName;
var results;
var IMP = window.IMP;
IMP.init("imp61564732"); // 예: imp00000000

$(document).on("click", ".btn_buy", function() {
    // console.log("[payment]item3: " + JSON.stringify(results));

    if (typeof results === 'object' && results !== null) {
        var payinfo = {};
        var allDetailsCollected = false; 
        console.log("productName: "+this.value);
        payinfo.buyer_productName = this.value;
        console.log("buyer_productName: "+ payinfo.buyer_productName);
        $.each(results, function(key, value) {
            console.log("[" + key + "] : " + value);

            switch (key) {
                case 'username':
                    payinfo.buyer_name = value;
                    break;
                case 'email':
                    payinfo.buyer_email = value;
                    break;
                case 'address':
                    payinfo.buyer_addr = value;
                    break;
                case 'zipcode':
                    payinfo.buyer_postcode = value;
                    break;
                case 'phoneNumber':
                    payinfo.buyer_tel = value;
                    break;
                default:
                    break;
            }

       
            if (Object.values(payinfo).every(val => val !== undefined)) {
                allDetailsCollected = true;
                return false; 
            }
        });

     
        if (allDetailsCollected) { // true면 이니시느 결제시스템 연동
            IMP.request_pay({
                pg: "html5_inicis",
                pay_method: "card",
                merchant_uid: payinfo.buyer_email + "_" + new Date().getTime(),
                name: payinfo.buyer_productName,
                amount: 51700,
                buyer_email: payinfo.buyer_email,
                buyer_name: payinfo.buyer_name,
                buyer_tel: payinfo.buyer_tel,
                buyer_addr: payinfo.buyer_addr,
                buyer_postcode: payinfo.buyer_postcode
            }, function(rsp) {
                if (rsp.success) {
                    alert("결제완료");
                } else {
                    alert("결제 취소하셨습니다.");
                }
            });
        } else {
            console.log("모든 결제 세부 정보가 수집되지 않았습니다");
        }
    } else {
        console.log("항목이 객체가 아니거나 null입니다");
    }
});

function payments(userId) { // userinfo 가져오기 token auth이용
    $.ajax({
        url: ctxPath + "/api/user/profile",
        data: {userId},
        type: "GET",
        dataType: 'json',
        success: function(result) {
            console.log("result[user] : " + result);
            results = result;
        }
    });
}
