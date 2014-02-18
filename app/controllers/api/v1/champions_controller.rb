module Api
  module V1
    class ChampionsController < ApplicationController
      respond_to :json

      def index
        respond_with Champion.all
      end
    end
  end
end
