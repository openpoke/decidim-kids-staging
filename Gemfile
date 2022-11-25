# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

DECIDIM_VERSION={ git: "https://github.com/decidim/decidim", branch: "develop" }

gem "decidim", DECIDIM_VERSION
# gem "decidim-conferences", DECIDIM_VERSION
# gem "decidim-consultations", DECIDIM_VERSION
# gem "decidim-elections", DECIDIM_VERSION
# gem "decidim-initiatives", DECIDIM_VERSION
# gem "decidim-templates", DECIDIM_VERSION

gem 'decidim-kids', git: "https://github.com/AjuntamentdeBarcelona/decidim-module-kids", branch: "main"

gem "bootsnap", "~> 1.3"

gem "puma", ">= 5.0.0"

gem "faker", "~> 2.14"

gem "wicked_pdf", "~> 2.1"

# some kind of bug in production if this is not here
  gem "net-imap", "~> 0.2.3"
  gem "net-pop", "~> 0.1.1"
  gem "net-smtp", "~> 0.3.1"

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri

  gem "brakeman", "~> 5.2"
  gem "decidim-dev", DECIDIM_VERSION
end

group :development do
  gem "letter_opener_web", "~> 2.0"
  gem "listen", "~> 3.1"
  gem "spring", "~> 2.0"
  gem "spring-watcher-listen", "~> 2.0"
  gem "web-console", "~> 4.2"
end

group :production do
  gem 'aws-sdk-s3', require: false
  gem 'sidekiq'
end
