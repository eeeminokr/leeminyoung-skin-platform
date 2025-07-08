$(document).ready(function(){
    siteCookie();


function siteCookie() {
    document.cookie = "promo_shown=1; Max-Age=2600000; Secure";
    document.cookie = 'same-site-cookie=foo; SameSite=None';
    document.cookie = 'cross-site-cookie=bar; SameSite=None; Secure';        
}
});


