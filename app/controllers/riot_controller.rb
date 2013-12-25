require 'riot_api'

class RiotController < ApplicationController
  http_basic_authenticate_with name: ENV['AUTH_USERNAME'], password: ENV['AUTH_PASSWORD']

  def champion_update
    champs = riot_api.champions.list
    champs.each do |champ|
      record = Champion.find_or_create_by(id: champ.id)
      record.update_attributes! champ.to_hash
    end
    redirect_to admin_index_path
  end

  private

  def riot_api
    RiotApi::API.new api_key: ENV['RIOT_API_KEY'], region: 'na', debug: false
  end
end
