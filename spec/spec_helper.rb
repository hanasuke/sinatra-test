$LOAD_PATH << File.join(File.dirname(__FILE__), '../lib')
$LOAD_PATH << File.join(File.dirname(__FILE__), '../spec')

require 'admin-test'

Bundler.require(:default)

module TargetApp
  include Rack::Test::Methods

  def app
    AdminTest::Api
  end
end

RSpec.configure do |config|
  config.include TargetApp

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

end
