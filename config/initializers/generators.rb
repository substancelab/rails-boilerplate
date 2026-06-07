# frozen_string_literal: true

Rails.application.config.generators do |g|
  # We'll manually create helpers when we need them (ie rarely)
  g.helper false

  # Don't generate view specs, we tend to not use them
  g.view_specs false

  g.test_framework \
    :rspec,

    # We'll manually create routing specs when we need them (ie rarely)
    :routing_specs => false
end
