

class EquiposPage
    include Capybara::DSL

    def create(equipos)
        # Isso é um checkpoint para garantir que acessou a pagina corretamente
        page.has_css?("#equipoForm")
    
        # Pega o caminho do arquivo
        thumb = Dir.pwd + "/Features/Support/Fixtures/images/" + equipos[:thumb]

        find("#thumbnail input[type=file]", visible: false).set thumb 
        find("input[placeholder$=equipamento]").set equipos[:nome]
        find("#category").find("option", text: equipos[:categoria]).select_option
        find("input[placeholder^=Valor]").set equipos[:preco]

        click_button "Cadastrar"
    end 
end 