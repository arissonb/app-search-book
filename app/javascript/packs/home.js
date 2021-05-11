import "../packs/config/util"
import "../packs/config/modules"

$(document).on('turbolinks:load', function () {
    SearchBook()
})

// Função de busca dinamica na pagina principal
function SearchBook() {

    $('#search').keyup(function () {
        $('.card').removeClass('d-none');
        var value = $(this).val().toLowerCase();
        $(".card").filter(function () {
            $(this).toggle($(this).find('h4, p, small').text().toLowerCase().indexOf(value) > -1)
        });

    })
}