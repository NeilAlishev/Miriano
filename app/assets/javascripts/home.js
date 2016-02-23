window.onload = function () {
    document.getElementById("how-it-works").onclick = function () {
        var offset = $(".main-head").offset();
        $("html,body").animate({
            scrollTop: offset.top - 50,
            scrollLeft: offset.left
        });
    };
};
