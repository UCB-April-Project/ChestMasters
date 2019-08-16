require 'rails_helper'

RSpec.describe "board_states/show", type: :view do
  before(:each) do
    @board_state = assign(:board_state, BoardState.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
