require_relative '../lib/staying-alive'

describe Rack::StayingAlive do
  describe 'given not configuration is used' do
    let(:mock_app) { double('App') }

    describe 'given the default route' do
      let(:request) do
        Rack::StayingAlive.new(mock_app).call({'PATH_INFO' => '/ah-ha-ha-ha' })
      end

      it 'responds as success 200' do
        expect(request.first).to eq(200)
      end

      it 'responds as text/plain' do
        expect(request[1]['Content-Type']).to eq('text/plain')
      end

      it 'responds with default response' do
        expect(request.last).to eq(['staying alive'])
      end
    end

    describe 'given a non matching route' do
      let(:request) do
        Rack::StayingAlive.new(mock_app).call({'PATH_INFO' => '/bad-route' })
      end

      it 'continues to the next middleware' do
        expect(mock_app).to receive(:call).with({'PATH_INFO' => '/bad-route' })

        request
      end
    end
  end
end
