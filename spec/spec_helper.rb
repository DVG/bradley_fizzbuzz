require 'bradley_fizzbuzz'

RSpec.configure do |config|
  config.filter_run :focus
  config.mock_with :rspec
  config.order = 'random'
end