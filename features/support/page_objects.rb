# encoding: utf-8
#!/usr/bin/env ruby

class Login <SitePrism::Page
  element :user_email, '#user'
  element :user_password, '#password'
  element :click_login, '#login'
end

class Logout <SitePrism::Page
  element :click_user_header, '._2RRjx_5B58a2BH'
  element :click_logout, :xpath, '//*[@id="layer-manager-popover"]/div/div[3]/nav/ul/li[7]/button'
end

class NewTeam <SitePrism::Page
  element :create_team_button, :xpath, '//*[@id="content"]/div/div[2]/div/div/div/div/div[1]/nav/div[2]/ul/div/li/button/span[2]'
  element :new_team_name, "#org-display-name"
  element :click_create_team, :xpath, '//*[@id="chrome-container"]/div[4]/div/div[2]/div/div/div/form/input[2]'
end
