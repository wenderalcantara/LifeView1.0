
function PrinConteudo() {
    var filtros = $("select");
    var btns = $("img");
    //esconde combos
    for (i = 0; i < filtros.length; i++) {
        $(filtros[i]).parent().parent().hide();
    }
    //esconde botoes
    for (i = 0; i < btns.length; i++) {
        if (btns[i].id.indexOf("Filter") != -1)
            $(btns[i]).hide();
    }

    //$("#filtroColuna_1").parent().parent().hide();
    var conteudo = document.getElementById('print').innerHTML;
    tela_impressao = window.open('about:blank');
    tela_impressao.document.write(conteudo);
    tela_impressao.window.print();
    tela_impressao.window.close();
    //$("#filtroColuna_1").parent().parent().show();
    //exibe combos
    for (i = 0; i < filtros.length; i++) {
        $(filtros[i]).parent().parent().show();
    }
    //esconde botoes
    for (i = 0; i < btns.length; i++) {
        if (btns[i].id.indexOf("Filter") != -1)
            $(btns[i]).show();
    }
}
//AdicionarFiltro("tab");
function AdicionarFiltro(tabela, ColValor) {


    var ComboBox = document.getElementById("filtroColuna_" + tabela + "1");

    if (ComboBox != null) {
        //esconde combos   
        if ($(ComboBox).is(":hidden"))
            $(ComboBox).parent().parent().show();
        else
            $(ComboBox).parent().parent().hide();

    }
    else //cria combos
    {
        //var tabs=$("table");
        var cols = $("#" + tabela + " thead tr:first-child th").length;

        if ($("#" + tabela + " thead tr").length == 1) {
            var linhaFiltro = "<tr>";
            for (var i = 0; i < cols; i++) {
                linhaFiltro += "<th></th>";
            }
            linhaFiltro += "</tr>";

            $("#" + tabela + " thead").append(linhaFiltro);
        }

        for (i = 1; i <= cols; i++) {
            var colFiltrar = $("#" + tabela + " thead tr:nth-child(2) th:nth-child(" + i + ")");

            $(colFiltrar).html("<select id='filtroColuna_" + tabela + i.toString() + "'  class='filtroColuna'> </select>");

            var valores = new Array();

            $("#" + tabela + " tbody tr").each(function () {
                var txt = $(this).children("td:nth-child(" + i + ")").text().replace(/\s{2,}/g, ' ').trim();
                if (valores.indexOf(txt) < 0) {
                    valores.push(txt);
                }
            });
            $("#filtroColuna_" + tabela + i.toString()).append("<option>TODOS</option>")
            for (elemento in valores) {
                $("#filtroColuna_" + tabela + i.toString()).append("<option>" + valores[elemento] + "</option>");
            }

            //evento para filtrar tabela
            $("#filtroColuna_" + tabela + i.toString()).change(function () {
                //var filtro = $(this).val();
                //var colIndex = this.parentElement.cellIndex + 1;
                var subtotal = 0;
                $("#" + tabela + " tbody tr").show();
                for (ni = 1; ni <= cols; ni++) {
                    var filtro = $("#filtroColuna_" + tabela + ni.toString()).val();

                    if (filtro != "TODOS") {
                        $("#" + tabela + " tbody tr").each(function () {
                            var txt = $(this).children("td:nth-child(" + ni + ")").text().replace(/\s{2,}/g, ' ').trim();
                            var vr = $(this).children("td:nth-child(" + ColValor + ")").text().replace('R$', '').replace(',', '.').replace(/\s{2,}/g, ' ').trim();
                            if (txt != filtro) {
                                $(this).hide();
                            }
                            else {
                                subtotal = subtotal + parseFloat(vr);
                            }
                        });
                    }
                }
                var txtVr = '';
                if (subtotal != 0)
                    txtVr = "(R$ " + subtotal.toFixed(2).replace('.', ',').replace(/(\d)(?=(\d{3})+\,)/g, "$1.") + ")";
                $("#txtSub_" + tabela).text(txtVr);
            });
        }
    }
};