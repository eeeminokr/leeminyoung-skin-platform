$(document).ready(function(){

    // 피부진단 이력관리 Tabs
    $('.tabs_company').each(function(){
        var tabs = $(this);
        var tabs_scrollbox = tabs.find('.scroll_box');
        var tabs_scrollbox_w = tabs.find('.scroll_box').outerWidth();
        var tabs_ul = tabs.find('ul');

        tabs_ul.css('width', tabs_scrollbox_w*2 + 'px');

        $('.tabcont_company').hide();

        tabs_ul.find('a').click(function(){
            var active = $(this).hasClass('active');
            var activeTabcont = $(this).attr('href');
            if(active == true) {
                return false;
            } else {
                $(this).closest('ul').find('a').removeClass('active');
                $(this).addClass('active');
                $('.tabcont_company').hide();
		        $(activeTabcont).fadeIn(100);
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
	
});