FactoryBot.define do
  
  factory :game do
    black {"1"}
    white {"1"}
  end

  factory :chess_piece do

    association :game
  end
 
  factory :task do
    title { "Do the dishes" }
    done { false }
  end
end