ENV["RACK_ENV"] ||= "test"

require File.expand_path("../../config/environment.rb", __FILE__)
require 'rspec'
require 'capybara/dsl'

Capybara.app = LaughTracksApp

RSpec.configure do |c|
  c.include Capybara::DSL
end

require "bundler"
Bundler.require(:default, :test)

DatabaseCleaner.strategy= :truncation

RSpec.configure do |c|
  c.before(:all) do
    DatabaseCleaner.clean
  end
  c.after(:each) do
    DatabaseCleaner.clean
  end
end
