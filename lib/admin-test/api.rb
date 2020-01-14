require 'json'
require 'sinatra/base'

class AdminTest::Api < Sinatra::Base
  '/'.tap do |e|
    get e do
      res = {message: 'hello'}
      return res.to_json
    end
  end
end