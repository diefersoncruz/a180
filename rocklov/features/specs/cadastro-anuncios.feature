#language: pt
Funcionalidade: Cadastro de Anuncios
    Sendo usuário cadastrado no RockLov que possui equipamentos musicais
    Quero cadastrar meus equipamentos
    Para que eu possa disponibilizalos para locação

    Contexto: Login
        * Login com "dieff.cruz@gmail.com" e "1234"
    Cenario: Novo equipo
        
        Dado que acesso o formulario de cadastro de anúncios
        E que eu tenho o seguinte equipamento:
            |thumb      | fender-sb.jpg |
            | nome      | Fender Strato |
            | categoria | Cordas        |
            | preco     | 200           |
        Quando submeto o cadastro desse item
        Então devo ver esse item no meu Dashboard