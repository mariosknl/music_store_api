# rubocop:disable Naming/VariableName
module Api
  module V1
    class InstrumentsController < ApplicationController
      def create
        case params[:type]
        when 'guitars'
          @instrument = Guitar.create(guitar_params)
        when 'bassGuitars'
          @instrument = BassGuitar.create(bass_params)
        when 'drumkits'
          @instrument = Drumkit.create(drums_params)
        when 'snares'
          @instrument = Snare.create(snares_params)
        when 'cymbals'
          @instrument = Cymbal.create(cymbals_params)
        end
        @new_inst = Instrument.new
        @new_inst.instrumentable = @instrument
        @new_inst.save
        render json: @new_inst
      end

      def update; end

      def show; end

      def index
        @instruments = Instrument.all
        render 'instrument/index.json.jbuilder'
      end

      def destroy; end

      def guitars
        @guitars = Guitar.all
        render 'instrument/guitars.json.jbuilder'
      end

      def bass_guitars
        @bassGuitars = BassGuitar.all
        render 'instrument/bass_guitars.json.jbuilder'
      end

      def drumkits
        @drumkits = Drumkit.all
        render 'instrument/drumkits.json.jbuilder'
      end

      def cymbals
        @cymbals = Cymbal.all
        render 'instrument/cymbals.json.jbuilder'
      end

      def snares
        @snares = Snare.all
        render 'instrument/snares.json.jbuilder'
      end

      private

      def instrument_params
        params.require(:instrument).permit(:instrumentable_type, :id, :instrument_id, :instrument)
      end

      def guitar_params
        params[:instrument].permit(:name, :strings, :image_url)
      end

      def bass_params
        params[:instrument].permit(:name, :strings, :image_url)
      end

      def drums_params
        params[:instrument].permit(:name, :image_url)
      end

      def snares_params
        params[:instrument].permit(:name, :category, :image_url)
      end

      def cymbals_params
        params[:instrument].permit(:name, :category, :image_url)
      end
    end
  end
end
# rubocop: enable all
