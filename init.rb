env = if defined?(Rails.env) && Rails.env
        Rails.env
      else
        RAILS_ENV
      end
if env == 'test'
  if defined? Spec
    require 'shoulda/rspec'
  else
    require 'shoulda/rails'
  end
end
