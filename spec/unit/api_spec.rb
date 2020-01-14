require 'spec_helper'

describe AdminTest::Api do
  describe 'GET' do
    let(:base_url) { '/' }
    let(:header) do
      {
        'CONTENT_TYPE' => 'application/json',
        'HTTP_ACCEPT' => 'application/json'
      }
    end
    subject { get(base_url, nil, header) }

    it '200' do
      expect(subject.status).to eq(200)
    end

    it 'message:hello' do
      expect(JSON.parse(subject.body)).to eq({'message' => 'hello'})
    end
  end
end