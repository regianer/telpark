Then("I should see {string} page") do |expect_name|
  expect(@app.home.logged_user).to eql expect_name
end