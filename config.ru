$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')

require 'admin-test'

run AdminTest::Api.new