require 'spec_helper'

describe AssetsController do
  describe 'GET :index' do
    before do
      get :index
    end
    it { should respond_with :ok }
    it { should render_template :index }
  end
end
