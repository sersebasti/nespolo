(function($){
    $(document).ready(function(){

        alert('JavaScript is working!');
        // Disable change-related links
        $('.related-widget-wrapper-link.change-related').each(function() {
            $(this).attr('href', '#');
            $(this).css('pointer-events', 'none');
            $(this).css('color', '#999');  // Optionally, change the color to indicate it's disabled
        });
        
    });
})(django.jQuery);