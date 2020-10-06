require 'rails_helper'

RSpec.describe 'Api::V1::Instruments', type: :request do
  before :all do
    @instrument = Instrument.new
    @instrument.instrumentable = Guitar.create(
      name: 'Gibson',
      strings: '6',
      image_url: 'https://media.sweetwater.com/api/i/q-82__ha-7a29d64155154130__hmac-ec10a6a7e9cfc72765de63e7cc6369759fee61cc/images/items/750/LPSTEBYCH-large.jpg'
    )
  end

  it 'returns all the instruments' do
    get 'http://localhost:3000/api/v1/instruments/index'
    expect(JSON[response.body].size).to be(5)
  end

  it 'renders json' do
    get 'http://localhost:3000/api/v1/instruments/index'
    expect(JSON[response.body].size).to render_template('index.json.jbuilder')
  end

  it 'return a successful response' do
    get 'http://localhost:3000/api/v1/instruments/index'
    expect(response).to be_successful
  end
end
