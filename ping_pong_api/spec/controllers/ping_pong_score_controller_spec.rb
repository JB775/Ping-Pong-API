require 'rails_helper'


RSpec.describe V1::PingPongScoresController, :type => :controller do
  
  render_views

  let(:json) { JSON.parse(response.body) }

  describe 'Checking get request to /v1/ping_pong_scores.json' do

    before do

      get :index, format: :json

    end

    it 'is successful response code' do

      expect(response).to be_success

    end

    context 'entire dataset' do 

      it 'properly returning all emails and high scores' do

        #testing database data here
        expect(json["ping_pong_scores"][0]["email"]).to include(PingPongScore.first.email)

        expect(json["ping_pong_scores"][1]["high_score"]).to eq(PingPongScore.second.high_score)

      end
    end 
  end
end