require 'rails_helper'

RSpec.describe "board_states/new", type: :view do
  before(:each) do
    assign(:board_state, BoardState.new())
  end

  it "renders new board_state form" do
    render

    assert_select "form[action=?][method=?]", board_states_path, "post" do
    end
  end
end
