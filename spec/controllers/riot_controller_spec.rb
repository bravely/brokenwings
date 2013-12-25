require 'spec_helper'

describe RiotController do
  describe 'GET :champion_update' do
    before do
      request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(ENV['AUTH_USERNAME'], ENV['AUTH_PASSWORD'])
      VCR.use_cassette('riot_api_champions_list') do
        get :champion_update
      end
    end
    it 'creates the set of champions' do
      expect(Champion.all.count).to eq 117
    end
  end
end
