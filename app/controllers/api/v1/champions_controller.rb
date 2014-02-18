module Api
  module V1
    class ChampionsController < ApplicationController
      respond_to :json

      def index
        respond_with Champion.all
      end

      def ta
        respond_with Champion.all, each_serializer: ChampionTASerializer
      end

      def show
        respond_with Champion.find(params[:id])
      end
    end
  end
end
