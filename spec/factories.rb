FactoryBot.define do
  factory :game do
    black {"1"}
    white {"1"}
  end

  factory :chess_piece do
    x_pos {}
    y_pos {}
    color {}
    type {}

    association :game
  end

  factory :task do
    title { "Do the dishes" }
    done { false }
  end
end