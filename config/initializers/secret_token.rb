secret = Rails.env.production? ? ENV['SECRET_TOKEN'] : 'supersecrettoken'
SemanticRails::Application.config.secret_key_base = secret
