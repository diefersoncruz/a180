Dado('que acesso a página de cadastro') do
    visit "http://rocklov-web:3000/signup"
end
  
Quando('submeto o meu cadastro completo') do
    find("#fullName").set "Dieferson Cruz"    
    find("#email").set Faker::Internet.free_email  
    find("#password").set "1234"    

    #Clica no botão cadastrar
    click_button "Cadastrar"
end
  
Então('sou redirecionado para o Dashboard') do
    # Valida se a pagina com o elemento dashboard foi encontrado
    expect(page).to have_css ".dashboard"
end