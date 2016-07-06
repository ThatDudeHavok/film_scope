# Set variable so taht we connect to the test database

require_relative '../config/environment'

require 'rspec'
require 'database_cleaner'

Rsepc.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each) {DatabaseCleaner.start}
  config.after(:each) {DatabaseCleaner.clean}
end

