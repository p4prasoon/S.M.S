$(function () {
    $('#featured_slide').after('<div id="fsn"><ul id="fs_pagination">').cycle({
        timeout: 5000,            
        pager: '#fs_pagination', 
        pause: 0, 
        pauseOnPagerHover: 0 
    });
});