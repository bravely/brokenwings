require 'spec_helper'

describe '/assets routes' do
  it { expect(get('/')).to route_to('assets#index') }
  it { expect(get('/assets/index')).to_not route_to('assets#index') }
end
