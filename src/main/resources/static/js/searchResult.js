$(function() {
    init();
});

function init() {
    const urlParams = new URLSearchParams(window.location.search);
    const lang = urlParams.get('lang') || 'ko';

    $.ajax({
        url : ctxPath+"/api/search/normalDiagnosisResult",
        type : "GET",
        data: {seq,diagnosisType,duplicateSeq},
        dataType : 'json',
        success : function(result){
            console.log("result : ", JSON.stringify(result));
            $(".userName").html("<span>고객명</span>" + result.userName);
            $(".cDate").html("<span>진단일자</span>" + result.cdate);
            $(".diagnosisType").html("<span>진단방법</span>" + (result.diagnosisType=="NORMAL"?"기본진단":"현장진단"));
            $(".faceType").html(FACE_TYPE[result.faceType].label);
            
            // 한국어, 중국어 구분
            $(".commentForFaceType").html(lang == 'cn' ? commentForFaceType_CN[result.faceType] : commentForFaceType[result.faceType]);

            var tbl = $(".tblRisk");
            // var item = tbl.find("tbody tr").eq(0).clone();
            var rowIdx = 0;
            function makeTbl(faceTroubleType,rowCount) {
                // 여기부터.
                // add row.
                var row = $("<tr></tr>");
                var cell1 = null;
                if ( rowIdx === 0 ) {
                    cell1 = $("<th rowspan='"+rowCount+"'></th>").attr({"class":"border_bt_td", "style":""}).html("피부고민");
                }
                var cell2 = $("<td></td>").attr({"class":"bg riskType", "style":""}).html(faceTroubleType.label);

                console.debug('user language ==> ' + lang);

                // 한국어, 중국어 구분
                var cell3 = $("<td></td>").attr({"class":"ta_l", "style":""}).html(lang == 'cn' ? commentForFaceTroubleType_CN[faceTroubleType.id] : commentForFaceTroubleType[faceTroubleType.id]);

                if ( rowIdx === 0 ) {
                    $(row).append(cell1).append(cell2).append(cell3);
                } else {
                    $(row).append(cell2).append(cell3);
                }

                $(tbl).append(row);
                rowIdx++;
            }
            var riskHeightCount = 0;
            if ( result.wrinkleRisk === RISK_TYPE.HIGH.id ) riskHeightCount++;
            if ( result.whiteningRisk === RISK_TYPE.HIGH.id )  riskHeightCount++;
            if ( result.moistureRisk === RISK_TYPE.HIGH.id )  riskHeightCount++;
            if ( result.oilRisk === RISK_TYPE.HIGH.id )  riskHeightCount++;
            if ( result.sensitiveRisk === RISK_TYPE.HIGH.id )  riskHeightCount++;

            if ( result.wrinkleRisk === RISK_TYPE.HIGH.id ) makeTbl(FACE_TROUBLE_TYPE.WRINKLE, riskHeightCount);
            if ( result.whiteningRisk === RISK_TYPE.HIGH.id ) makeTbl(FACE_TROUBLE_TYPE.WHITENING, riskHeightCount);
            if ( result.moistureRisk === RISK_TYPE.HIGH.id ) makeTbl(FACE_TROUBLE_TYPE.MOISTURE, riskHeightCount);
            if ( result.oilRisk === RISK_TYPE.HIGH.id ) makeTbl(FACE_TROUBLE_TYPE.OIL, riskHeightCount);
            if ( result.sensitiveRisk === RISK_TYPE.HIGH.id ) makeTbl(FACE_TROUBLE_TYPE.SENSITIVE, riskHeightCount);

            $(".wrinkleRisk").text(RISK_TYPE[result.wrinkleRisk].label);
            $(".whiteningRisk").text(RISK_TYPE[result.whiteningRisk].label);
            $(".moistureRisk").text(RISK_TYPE[result.moistureRisk].label);
            $(".oilRisk").text(RISK_TYPE[result.oilRisk].label);
            $(".sensitiveRisk").text(RISK_TYPE[result.sensitiveRisk].label);

            $(".wrinkle").text(result.wrinkle.toFixed(2));
            $(".whitening").text(result.whitening.toFixed(2));
            $(".moisture").text(result.moisture.toFixed(2));
            $(".oil").text(result.oil.toFixed(2));
            $(".sensitive").text(result.sensitive.toFixed(2));
            drawProduct(result);
            drawChart(result);
          
        }
    });
    function drawProduct(result) {
        var sgParams = {};
        sgParams.searchFaceTroubleTypeW = result.wrinkleRisk === RISK_TYPE.HIGH.id;
        sgParams.searchFaceTroubleTypeA = result.moistureRisk === RISK_TYPE.HIGH.id;
        sgParams.searchFaceTroubleTypeL = result.oilRisk === RISK_TYPE.HIGH.id;
        sgParams.searchFaceTroubleTypeM = result.whiteningRisk === RISK_TYPE.HIGH.id;
        sgParams.searchFaceTroubleTypeS = result.sensitiveRisk === RISK_TYPE.HIGH.id;
        var userId = result.userId;
        $.ajax({
            url: ctxPath + "/api/search/productSuggestSearch",
            type: "GET",
            data: sgParams,
            dataType: 'json',
            success: function (result) {
                var tbl = $(".tblProduct");
                // var item = tbl.find("tbody tr").eq(0).clone();
                var rowIdx = 0;
                payment(userId);
                $.each(result,function(index,item){
                    // add row.
                    var row = $("<tr></tr>");
                    var cell1 = $("<td></td>").attr({"class":"border_r_none p_img", "style":""}).html(
                        `<img width="240" height="240"
                          src=/api/member/file/${item.userId}/productRegType3/${item.id}
                          alt="" />`
                    );
                    var cell2 = $("<td></td>").attr({"class":"boder_r_none p_name"}).html(item.productName);
                    var cell3 = $("<td></td>").attr({"class":"p_info"}).html(
                        `
                        <ul class="ul_product">
                                 <li>
                                     <span class="txt">업체명</span>
                                     <p>${item.companyName}</p>
                                 </li>
                                 <li>
                                     <span class="txt">전성분</span>
                                     <p>${item.fullIngredient}</p>
                                 </li>
                                 <li>
                                     <span class="txt">효능</span>
                                     <p>${item.efficacy}</p>
                                 </li>
                                 <li>
                                     <span class="txt">구매링크</span>
                                     <p><a href="${item.purchaseUrl}" target="_blank" title="새창열기">${item.purchaseUrl}</a></p>
                                     <button type="button" class="btn_buy" value="${item.productName}">결제하기</div>   
                                 </li>
                             </ul>
                        `
                    );
                    $(row).append(cell1).append(cell2).append(cell3);
                    $(tbl).append(row);
                });
            }
        });

    }
    function payment(userId) {

        payments(userId)
       
    }
    
    function drawChart(data) {
        setTimeout(function() {

            Highcharts.chart('chart', {
                chart: {
                    polar: true,
                    type: 'line',
                    backgroundColor:"#FAF8F3",
                },

                accessibility: {
                    description: ''
                },

                title: {
                    text: '',
                    x: -80
                },

                pane: {
                    size: '80%'
                },

                xAxis: {
                    categories: ['주름', '미백', '수분', '유분','민감'],
                    tickmarkPlacement: 'on',
                    lineWidth: 0,
                    labels: {
                        style: {
                            fontSize: 17,
                            fontWeight:"bold"
                        }
                    },
                    gridLineWidth: 1,
                    gridLineColor: "#B9B1AB"
                    // tickWidth: 1,
                    // tickColor: '#ff0000'
                },

                yAxis: {
                    gridLineInterpolation: 'polygon',
                    lineWidth: 0,
                    min: 0,
                    gridLineWidth: 1,
                    gridLineColor: "#5E4E41"
                },

                tooltip: {
                    shared: true,
                    pointFormat: '<span style="color:{series.color}">{series.name}: <b>{point.y:,.0f}</b><br/>'
                    // pointFormat:(data)=>{
                    //   return data.y;
                    // },
                    // pointFormat: '<span style="color:{series.color}">{series.name}: <b>{(point.y==0?"낮음":(point.y==1??"중간":"높음"))}</b><br/>'
                },

                legend: {
                    x:300,
                    align: 'center',
                    verticalAlign: 'top',
                    layout: 'vertical'

                },

                series: [{
                    dataLabels: {
                        enabled: true,
                        align: 'right',
                        color: '#ED7D45',
                        style: {
                            textOutline: 'none',
                            fontSize:15
                        },
                        x: -10,
                        formatter:function(data){
                            return this.point.y==0?"낮음":(this.point.y==1?"중간":"높음");
                        }
                    },
                    name: '위험도',
                    color:"#ED7D45",
                    data: [
                        RISK_TYPE[data.wrinkleRisk].chartValue,
                        RISK_TYPE[data.whiteningRisk].chartValue,
                        RISK_TYPE[data.moistureRisk].chartValue,
                        RISK_TYPE[data.oilRisk].chartValue,
                        RISK_TYPE[data.sensitiveRisk].chartValue],
                    pointPlacement: 'on'
                }],

                responsive: {
                    rules: [{
                        condition: {
                            maxWidth: 2,
                        },
                        chartOptions: {
                            legend: {
                                align: 'center',
                                verticalAlign: 'bottom',
                                layout: 'horizontal'
                            },
                            pane: {
                                size: '70%'
                            },
                        }
                    }]
                }

            });
        },500);

    }
}


