module Api
  module V1
    class LikesController < ApplicationController
      include ActionController::Cookies
      before_action :find_instrument

      def create
        @instrument.likes.create(user_id: user.id)
        render json 'likes/create.json.jbuilder'
      end

      private

      def find_instrument
        @instrument = Instrument.find(params[:id])
      end
    end
  end
end
