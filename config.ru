# frozen_string_literal: true

# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

# Redirect to the single hostname that we want to use for all requests
require "rack/canonical_host"
if ENV["DOMAIN"]
  use \
    Rack::CanonicalHost,
    ENV["DOMAIN"],
    :cache_control => "max-age=3600"
end

run Rails.application
Rails.application.load_server
