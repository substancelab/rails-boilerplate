# frozen_string_literal: true

RSpec.configure do |config|
  config.include Devise::Test::ControllerHelpers, :type => :controller
  config.include Warden::Test::Helpers, :type => [:controller, :system]
end
