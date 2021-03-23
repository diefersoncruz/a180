#language: pt
Funcionalidade: Cadastro de Anuncios
    Sendo usuário cadastrado no RockLov que possui equipamentos musicais
    Quero cadastrar meus equipamentos
    Para que eu possa disponibilizalos para locação

    Cenario: Novo equipo
        
        Dado que estou logado como "dieff.cruz@gmail.com" e "1234"
        E que acesso o formulario de cadastro de anúncios
        E que eu tenho o seguinte equipamento:
            |thumb      | fender-sb.jpg |
            | nome      | Fender Strato |
            | categoria | Cordas        |
            | preco     | 200           |
        Quando submeto o cadastro desse item
        Então devo ver esse item no meu Dashboard