# encoding: utf-8
# !/usr/bin/env ruby

Given(/^User is on the home page$/) do
  visit 'https://trello.com/kloeckner/boards'
end

When(/^click on Create a team$/) do
  @newTeam.create_team_button.click
end

And(/^enter the name$/) do
  @newTeam.new_team_name.set("Test 2")
end

And(/^click on Create$/) do
  @newTeam.click_create_team.click
end

Then (/^the new team is created successfully$/) do
  sleep(3)
  page.has_content?('Test 2')
end
