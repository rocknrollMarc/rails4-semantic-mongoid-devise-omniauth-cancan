secret = Rails.env.production? ? ENV['SECRET_TOKEN'] : '41f144f1e05b3fda918db7e94c8537b73854b04197fa2ca07eb7d4e97d2ea42a4018dce973e06f99bbf95420bb51abab66ce9172282ce593272ae10ca2478756'
SemanticRails::Application.config.secret_key_base = secret
