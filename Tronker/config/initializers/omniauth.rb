OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, ENV['444364956186741'], ENV['a0d56a84ae387326ae81032dbfe34d7b']
end
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '477621880937-8v1hf90lutqcc9tq0hjip0gk3p1vht74.apps.googleusercontent.com', '-o7phbz52d9X27ghf4iG4sQh', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end    
