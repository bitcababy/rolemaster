$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

# Load the Rails environment and testing framework
require "#{File.dirname(__FILE__)}/dummy/config/environment"

require 'rubygems'
require 'rspec'

# ENV['RAILS_ENV'] = 'in_memory'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

# Load the app environment and testing framework
require "#{File.dirname(__FILE__)}/dummy/config/environment"
require "#{File.dirname(__FILE__)}/../lib/rolemaster"

# Run the migrations
# ActiveRecord::Migrator.migrate("#{Rails.root}/db/migrate")

# RSpec.configure do |config|
#   config.use_transactional_fixtures = true
#   config.use_instantiated_fixtures  = false
# end

# Run the migrations
# ActiveRecord::Migrator.migrate("#{Rails.root}/db/migrate")
