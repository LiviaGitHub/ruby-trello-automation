# encoding: utf-8
# !/usr/bin/env ruby

Given(/^sign in to login screen$/) do
  visit 'https://trello.com/login'
end

When(/^enter the email$/) do
  @login.user_email.set('liviagithub@gmail.com')
end

And(/^enter the password$/) do
  @login.user_password.set('6AuU7BmJ2gNURjN')
end

And(/^click on login$/) do
  @login.click_login.click
end

Then (/^login done successfully$/) do
  page.has_content?('Welcome to the Team!')
end
