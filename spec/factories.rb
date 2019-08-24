FactoryBot.define do
  
  factory :game do
    black {"1"}
    white {"1"}
  end

  factory :chess_piece do
    type {"King"}
    x_pos {5}
    y_pos {5}
    color {"black"}
    association :game
  end
end