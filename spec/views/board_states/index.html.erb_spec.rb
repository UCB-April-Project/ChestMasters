require 'rails_helper'

RSpec.describe "board_states/index", type: :view do
  before(:each) do
    assign(:board_states, [
      BoardState.create!(),
      BoardState.create!()
    ])
  end

  it "renders a list of board_states" do
    render
  end
end
