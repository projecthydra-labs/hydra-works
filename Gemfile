source 'https://rubygems.org'

# Specify your gem's dependencies in hydra-works.gemspec
gemspec

gem 'activefedora-aggregation', github: 'projecthydra-labs/activefedora-aggregation', ref: '0dfe4f4'
gem 'active-fedora', github: 'projecthydra/active_fedora', ref: '6c6f3e9337076a8333eeb6eb46552315cf96264f'
gem 'hydra-pcdm', github: 'projecthydra-labs/hydra-pcdm', ref: 'a06b42a'
gem 'slop', '~> 3.6' # For byebug

unless ENV['CI']
  gem 'pry'
  gem 'pry-byebug'
  gem 'byebug'
end