Rails.application.config.generators do |g|
  # Don't generate the default scaffold stylesheet
  g.scaffold_stylesheet false

  # We'll manually create helpers when we need them (ie rarely)
  g.helper false

  # Don't generate view specs, we tend to not use them
  g.view_specs false

  # Don't generate resource-specific assets
  g.assets false
end
