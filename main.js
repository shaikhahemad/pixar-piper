$(document).ready(function () {
    $(".form").hide();
    $(".form-nav").click(function () {
        $(".quote").toggle();
        $(".form").toggle();
        var text = $(this).text();
        $(this).text(text === "Open Quotes" ? "Open Form" : "Open Quotes");
    });
});
