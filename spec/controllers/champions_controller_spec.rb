require 'spec_helper'

describe Api::V1::ChampionsController do
  before :each do
    request.env['HTTP_ACCEPT'] = 'application/json'
  end
  describe 'GET :index' do
    let!(:serialized_champions) { { 'champions' => ActiveModel::ArraySerializer.new(Champion.all) } }
    before do
      get :index
    end
    it { should respond_with :ok }
    it { expect(response.content_type).to eq 'application/json' }
    it { expect(response.body).to eq serialized_champions.to_json }
  end

  describe 'GET :ta' do
    let!(:serialized_champions) { { 'champions' => ActiveModel::ArraySerializer.new(Champion.all, each_serializer: ChampionTASerializer) } }
    before do
      get :ta
    end
    it { should respond_with :ok }
    it { expect(response.content_type).to eq 'application/json' }
    it { expect(response.body).to eq serialized_champions.to_json }
  end
  
  describe 'GET :show' do
    let!(:champ) { create(:champion) }
    let!(:serialized_champion) { ChampionSerializer.new(champ) }
    before do
      get :show, id: champ.id
    end
    it { should respond_with :ok }
    it { expect(response.content_type).to eq 'application/json' }
    it { expect(response.body).to eq serialized_champion.to_json }
  end
end
