require 'rails_helper'

RSpec.describe "board_states/edit", type: :view do
  before(:each) do
    @board_state = assign(:board_state, BoardState.create!())
  end

  it "renders the edit board_state form" do
    render

    assert_select "form[action=?][method=?]", board_state_path(@board_state), "post" do
    end
  end
end
