FactoryBot.define do
  factory :knight do
    
  end

  factory :queen do
    
  end

  factory :bishop do
    
  end

  
  factory :game do
    black {"1"}
    white {"1"}
  end

  factory :chess_piece do

    association :game
  end

  factory :king do
  end
  
  factory :rook do
  end
  
end