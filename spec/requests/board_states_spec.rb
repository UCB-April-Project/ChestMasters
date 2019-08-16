require 'rails_helper'

RSpec.describe "BoardStates", type: :request do
  describe "GET /board_states" do
    it "works! (now write some real specs)" do
      get board_states_path
      expect(response).to have_http_status(200)
    end
  end
end
