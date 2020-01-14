$LOAD_PATH << File.join(File.dirname(__FILE__), '..')
$LOAD_PATH << File.join(File.dirname(__FILE__), '../lib/')

Bundler.require(:default)

class AdminTest
  def self.root
    File.expand_path('..', File.dirname(__FILE__)) + '/'
  end
end

require_files = []

require_files += Dir.glob(AdminTest.root + 'lib/admin-test/*.rb')

require_files.each { |f| require f }