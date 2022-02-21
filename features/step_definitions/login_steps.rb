Given('I visit login') do
    @app.login.load
  end

  When("I enter {string} and {string}") do |email, password|
    @app.login.login(email, password)
  end

  Then("I should see alert message {string}") do |expect_message|
    expect(@app.login.alert_message).to include expect_message
  end