require 'riot_api'

class RiotController < ApplicationController
  ra = RiotApi::API.new api_key: ENV['RIOT_API_KEY'], region: 'na', debug: false

  def champion_update
    champs = ra.champions.list
    champs.each do |champ|
      record = Champion.find_or_create_by(id: champ.id)
      record.update_attributes! champ.to_hash
    end
  end
end
