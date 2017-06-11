Rails.application.config.generators do |g|
  # Don't generate the default scaffold stylesheet
  g.scaffold_stylesheet false

  # Don't generate resource-specific assets
  g.javascripts false
  g.stylesheets false
end
