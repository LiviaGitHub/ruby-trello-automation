Before ('@general') do
  page.driver.browser.manage.window.maximize
  @login = Login.new
  @logout = Logout.new
  @newTeam = NewTeam.new
end

Before ('@login') do
  login = Login.new
  page.driver.browser.manage.window.maximize
  visit 'https://trello.com/login'
  login.user_email.set('liviagithub@gmail.com')
  login.user_password.set('6AuU7BmJ2gNURjN')
  login.click_login.click
end

After do
	Capybara.reset_sessions!
end
