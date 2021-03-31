Before do
  @alert = Alert.new
  @login_page = LoginPage.new
  @signup_page = SignupPage.new
  @dash_page = DashPage.new
  @equipos_page = EquiposPage.new

  # Maximiza a tela do browser
  #page.driver.browser.manage.window.maximize

  #seta o tamanho do janela do Browser
  page.current_window.resize_to(1440, 900)
end
