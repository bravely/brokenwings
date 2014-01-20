module Api
  module V1
    class ChampionsController < ApplicationController
      respond_to :json

      def index
        respond_with Champion.all
      end

      def rootless
        render json: Champion.all, root: false
      end
    end
  end
end
