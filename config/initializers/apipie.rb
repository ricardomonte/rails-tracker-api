Apipie.configure do |config|
  config.app_name                = "RailsTrackerApi"
  config.api_base_url            = "/api"
  config.doc_base_url            = "/apipie"
  config.show_all_examples       = true
  config.translate               = false
  # where is your API defined?
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/api/**/*.rb"
end


