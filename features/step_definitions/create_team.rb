# encoding: utf-8
# !/usr/bin/env ruby

Given(/^User is on the home page$/) do
  page.has_content?('Boards')
end

When(/^click on Create a team$/) do
  @newTeam.create_team_button.click
end

And(/^enter the name$/) do
  @newTeam.new_team_name.set('Create Team Test')
end

And(/^click on Create$/) do
  @newTeam.click_create_team.click
end

Then (/^the new team is created successfully$/) do
  page.has_content?('Create Team Test')
end
