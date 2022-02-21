class Login < SitePrism::Page
    set_url '/'
    element :input_email, '#inputEmail'
    element :input_password, '#inputPassword'
    element :alert, '.alert-error2 > span'

    def login(email, password)
      input_email.send_keys(email)
      input_password.send_keys(password)
      click_button "Iniciar Sesión"
    end

    def alert_message
      alert.text
    end
end