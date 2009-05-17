$(document).ready(function() {
    var wrapper = $(".cell_border")
    $("#halo").change(function() {
        if (this.checked) {
            wrapper.addClass('haloActive')
        } else {
            wrapper.removeClass('haloActive')
        }
    })
    $("a", wrapper).each(function() {

        if (!this.href.match(/#$/)) {
            $(this).click(function() {
                alert("link to: '" + $(this).attr('href') + "'")
                return false
            })
        }
    })
})
