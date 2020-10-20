module Api
  module V1
    class LikesController < ApplicationController
      respond_to :json
      include ActionController::Cookies
      before_action :find_instrument
      before_action :info_current_user

      def create
        new_like = Like.new(user_id: @user.id, instrument_id: @instrument.id)
        render 'likes/create.json.jbuilder' if new_like.save
      end

      private

      def find_instrument
        @instrument = Instrument.find(params[:instrument_id])
      end
    end
  end
end
