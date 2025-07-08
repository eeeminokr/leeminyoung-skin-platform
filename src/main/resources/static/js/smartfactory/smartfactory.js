var ctx;
var url;
$(function(){
    
    // 피부진단 이력관리 Tabs
    $('.tabs_company').each(function(){
        var tabs = $(this);
        var tabs_scrollbox = tabs.find('.scroll_box');
        var tabs_scrollbox_w = tabs.find('.scroll_box').outerWidth();
        var tabs_ul = tabs.find('ul');

        tabs_ul.css('width', tabs_scrollbox_w*2 + 'px');

        tabs_ul.find('a').click(function(){
            var active = $(this).hasClass('active');
            if(active == true) {
                return false;
            } else {
                $(this).closest('ul').find('a').removeClass('active');
                $(this).addClass('active');
                return false;
            }
        });

        // Button Next
        $('.tabs_next').click(function(){
            var xPoint = tabs_scrollbox.scrollLeft();

            tabs_scrollbox.animate( { scrollLeft: xPoint + tabs_scrollbox_w }, 600);
            $(this).removeClass('on');
            tabs.find('.tabs_prev').addClass('on');

            return false;
        });

        // Button Prev
        $('.tabs_prev').click(function(){
            var xPoint = tabs_scrollbox.scrollLeft();
            
            tabs_scrollbox.animate( { scrollLeft: xPoint - tabs_scrollbox_w }, 600);
            $(this).removeClass('on');
            tabs.find('.tabs_next').addClass('on');

            return false;
        });

    });


    ctx = window.location.pathname.substring(0,window.location.pathname.indexOf("/",0))
    

    $('#chowis').click(function(){
        url = ctx + "/api/device/typeC/chowis"
        findDeviceData(url);
    }); 

    classActive();
    findDeviceData(url);
});


function classActive(){
    $(".lists > li > a").each(function(index, item){

        var clazz =$(this).attr('class');
        
        if(clazz == "active"){
            if(this.id == "aram"){
                url = ctx + "api/device" +"/typeA/" + this.id
            }else if(this.id == "chowis"){
                url = ctx + "api/device" +"/typeC/" + this.id
            } 
        }
    });
}

    


$('#chowis').click(function(){
    url = ctx + "/api/device/typeC/chowis"
    findDeviceData(url);
}); 


function findDeviceData(url){

    fetch(url,{
		method:"GET",
		headers: {
			'content-Type': 'application/json',
		},
	})
	.then(response => response.json())
	.then((data) =>{
		console.log('성공', data);

        data.forEach( chowisData => {
            
            let str = '';
            str += "<tr>"
            str += "<td>" + chowisData.customerId +"</td>"
            str += "<td>" + chowisData.gender +"</td>"
            str += "<td>" + chowisData.age +"</td>"
            str += "<td>" + chowisData.moistureU +"</td>"
            str += "<td>" + chowisData.moistureT +"</td>"
            str += "<td>" + chowisData.sesitivity +"</td>"
            str += "<td>" + chowisData.sebumU +"</td>"
            str += "<td>" + chowisData.sebumT +"</td>"
            str += "<td>" + chowisData.spots +"</td>"
            str += "<td>" + chowisData.wrinkles +"</td>"
            str += "<td>" + chowisData.pores +"</td>"
            str += "<td>" + chowisData.keratin +"</td>"
            str += "<td>" + chowisData.porphiryn +"</td>"
            str += "<tr>"
            $('.tabcont_company').find('table > tbody').append(str); 
        });

		
	})
	.catch((error) => {
		console.error('실패:', error)
	});
}