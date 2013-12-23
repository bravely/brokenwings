require 'spec_helper'

describe AdminController do

  describe 'GET :index' do
    before do
      request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(ENV['AUTH_USERNAME'], ENV['AUTH_PASSWORD'])
      get :index
    end
    it { should respond_with :ok }
    it { should render_template :index }
  end

end
