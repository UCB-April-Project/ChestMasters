require "rails_helper"

RSpec.describe BoardStatesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/board_states").to route_to("board_states#index")
    end

    it "routes to #new" do
      expect(:get => "/board_states/new").to route_to("board_states#new")
    end

    it "routes to #show" do
      expect(:get => "/board_states/1").to route_to("board_states#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/board_states/1/edit").to route_to("board_states#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/board_states").to route_to("board_states#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/board_states/1").to route_to("board_states#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/board_states/1").to route_to("board_states#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/board_states/1").to route_to("board_states#destroy", :id => "1")
    end
  end
end
