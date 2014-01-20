require 'spec_helper'

describe Api::V1::ChampionsController do
  before :each do
    request.env['HTTP_ACCEPT'] = 'application/json'
  end
  describe 'GET :index' do
    before do
      get :index
    end
    it { should respond_with :ok }
    it { expect(response.content_type).to eq 'application/json' }
  end
end
