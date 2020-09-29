module Api
  module V1
    class LikesController < ApplicationController
      before_action :find_instrument

      def create
        @instrument.likes.create(user_id: user.id)
        render json 'likes/create.json.jbuilder'
      end

      private

      def find_instrument
        @instrument = Instrument.find(params[:instrument_id])
      end
    end
  end
end
