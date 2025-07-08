$(document).ready(function(){

    // Tabs
    $('.wt_tabcont').first().show();
    $('.wt_tabs').each(function(){
        $(this).find('a').click(function(){
            var tabCont = $(this).attr('href');
            $(this).parent().addClass('active').siblings().removeClass('active');
            $('.wt_tabcont').hide();
            $(tabCont).fadeIn(100);
            $(tabCont).find('.scroll_box').scrollLeft(0);
            $(tabCont).find('.slide_prev').removeClass('on');
            $(tabCont).find('.slide_next').addClass('on');
            return false;
        });
    });

    // Button Next
    $('.slide_next').click(function(){
        var $thisbox = $(this).parent();
        var $scrollbox = $thisbox.find('.scroll_box');
        var scrollbox_w = $thisbox.find('.scroll_box').width() - 12;
        var scrollbox_ul =  $thisbox.find('.scroll_box').find('ul').width();
        var xPoint = $scrollbox.scrollLeft();
        
        if(xPoint > (scrollbox_ul - scrollbox_w) ||  xPoint === scrollbox_w) {
            $scrollbox.animate( { scrollLeft: xPoint + scrollbox_w }, 600);
            $(this).removeClass('on');
        } else {
            $scrollbox.animate( { scrollLeft: xPoint + scrollbox_w }, 600);
            $thisbox.find('.slide_prev').addClass('on');
        }
        return false;
    });

    // Button Prev
    $('.slide_prev').click(function(){
        var $thisbox = $(this).parent();
        var $scrollbox = $thisbox.find('.scroll_box');
        var scrollbox_w = $thisbox.find('.scroll_box').width() - 12;
        var xPoint = $scrollbox.scrollLeft();
        
        if(0 === xPoint || xPoint < scrollbox_w || xPoint === scrollbox_w) {
            $scrollbox.animate( { scrollLeft: xPoint - scrollbox_w }, 600);
            $(this).removeClass('on');
        } else {
            $scrollbox.animate( { scrollLeft: xPoint - scrollbox_w }, 600);
            $thisbox.find('.slide_next').addClass('on');
        }
        return false;
    });
	
});