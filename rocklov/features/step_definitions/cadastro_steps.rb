Dado('que acesso a página de cadastro') do
    visit "http://rocklov-web:3000/signup"
end
  
Quando('submeto o seguinte formulário de cadastro:') do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    user = table.hashes.first

    MongoDB.new.remove_user(user[:email])

    find("#fullName").set user[:nome]    
    find("#email").set user[:email]  
    find("#password").set user[:senha]    

    #Clica no botão cadastrar
    click_button "Cadastrar"
end  
  
Então('sou redirecionado para o Dashboard') do
    # Valida se a pagina com o elemento dashboard foi encontrado
    expect(page).to have_css ".dashboard"
end

Então('vejo a mensagem de alerta: {string}') do |expect_alert|
    alert = find(".alert-dark")
    expect(alert.text).to eql expect_alert
end