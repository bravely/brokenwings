require 'spec_helper'

describe 'api_constraints' do
  context 'when there is no version number present' do
    let!(:serialized_champions) { { 'champions' => ActiveModel::ArraySerializer.new(Champion.all) } }
    before do
      get 'api/champions'
    end
    it { expect(status).to eq 200 }
    it { expect(response.body).to eq serialized_champions.to_json }
  end
  # Have no real way to test the api versioning until a second version without modifying base response. Not happening for tests.
end
