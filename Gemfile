source 'http://rubygems.org'

gem 'rails', '3.1.0'
gem 'jquery-rails'
gem 'minitest'
gem 'gmaps4rails'

# Usamos postgres para Heroku en Producción
group :production do
	gem 'pg'
end

# Usamos sqlite3 en Desarrollo y Testing
group :development, :test do
	gem 'sqlite3'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
