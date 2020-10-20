require 'rails_helper'

RSpec.describe 'Api::V1::Instruments', type: :request do
  describe 'GET instruments#index' do
    it 'returns all the instruments' do
      get 'http://localhost:3000/api/v1/instruments/index'
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST instruments#create' do
    it 'creates an guitar instrument' do
      instrument = Instrument.new
      instrument.instrumentable = Guitar.create(
        name: 'Gibson Les Paul',
        strings: '6',
        image_url: 'https://media.sweetwater.com/api/i/q-82__ha-7a29d64155154130__hmac-ec10a6a7e9cfc72765de63e7cc6369759fee61cc/images/items/750/LPSTEBYCH-large.jpg'
      )
      post '/api/v1/instruments/create', params: instrument.to_json, headers: { "Content-Type": 'application/json' }
      expect(response).to have_http_status(200)
    end

    it 'creates an bass_guitar instrument' do
      instrument = Instrument.new
      instrument.instrumentable = BassGuitar.create(
        name: 'Ibanez',
        strings: '4',
        image_url: 'https://d1aeri3ty3izns.cloudfront.net/media/32/320069/600/preview_1.jpg'
      )
      post '/api/v1/instruments/create', params: instrument.to_json, headers: { "Content-Type": 'application/json' }
      expect(response).to have_http_status(200)
    end

    it 'creates an drumkit instrument' do
      instrument = Instrument.new
      instrument.instrumentable = Drumkit.create(
        name: 'Pearl',
        image_url: 'https://cdn.shopify.com/s/files/1/0267/0618/2179/products/PearlExportEXX20_FusionDrumKitSmokeyChrome_1.jpg?v=1599909216'
      )
      post '/api/v1/instruments/create', params: instrument.to_json, headers: { "Content-Type": 'application/json' }
      expect(response).to have_http_status(200)
    end

    it 'creates an snare instrument' do
      instrument = Instrument.new
      instrument.instrumentable = Snare.create(
        name: 'Pearl',
        category: 'Metal',
        image_url: 'https://lh3.googleusercontent.com/proxy/Q2vdyK3jbhlY5t0T8exyQNJrIodcP4QUWv65ZdmSvnlTQas9Gws5f-0efbYeiXmhjffghNWup0BCUXantShGeIakfVyLg5qmjbO0ETLZ06Oho4zpbrHsXumtD9g'
      )
      post '/api/v1/instruments/create', params: instrument.to_json, headers: { "Content-Type": 'application/json' }
      expect(response).to have_http_status(200)
    end
    it 'creates an drumkit instrument' do
      instrument = Instrument.new
      instrument.instrumentable = Cymbal.create(
        name: 'Pearl',
        image_url: 'https://lh3.googleusercontent.com/proxy/Q2vdyK3jbhlY5t0T8exyQNJrIodcP4QUWv65ZdmSvnlTQas9Gws5f-0efbYeiXmhjffghNWup0BCUXantShGeIakfVyLg5qmjbO0ETLZ06Oho4zpbrHsXumtD9g'
      )
      post '/api/v1/instruments/create', params: instrument.to_json, headers: { "Content-Type": 'application/json' }
      expect(response).to have_http_status(200)
    end
  end
end
