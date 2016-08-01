# config/initializers/carrierwave.rb

Carrierwave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                         #required
    :aws_access_key_id      => ENV["AWS_ACCESS_KEY"],                                 #required
    :aws_secret_address_key => ENV["AWS_SECRET_KEY"]                                  #required
  }

  config.fog_directory = ENV["AWS_BUCKET"]          #required
end