Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '283859091731504', 'b078d97e9d3f51255ca550de858a0ac2'
end
