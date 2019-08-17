class Game < ApplicationRecord

    #converts the stored string to an array
    serialize :board_state, Array
    after_create :populate_board!

    #belongs_to :user
    #uncomment when the user table is created for device
    has_many :chess_pieces

    def populate_board!
        #    1  2  3  4  5  6  7  8
        # 8  r  k  b  q  K  b  k  r     black side
        # 7  p  p  p  p  p  p  p  p
        # 6  -  -  -  -  -  -  -  -
        # 5  -  -  -  -  -  -  -  -
        # 4  -  -  -  -  -  -  -  -
        # 3  -  -  -  -  -  -  -  -
        # 2  p  p  p  p  p  p  p  p
        # 1  r  k  b  q  K  b  k  r     white side

        for i in 1..8 do
            chess_pieces.create(x_pos: i, y_pos: 2, color: 'white', type: 'Pawn')
            chess_pieces.create(x_pos: i, y_pos: 7, color: 'black', type: 'Pawn')
        end

        #place remaining white pieces
        chess_pieces.create(x_pos: 1, y_pos: 1, color: 'white', type: 'Rook')
        chess_pieces.create(x_pos: 1, y_pos: 8, color: 'white', type: 'Rook')

        chess_pieces.create(x_pos: 1, y_pos: 2, color: 'white', type: 'Knight')
        chess_pieces.create(x_pos: 1, y_pos: 7, color: 'white', type: 'Knight')

        chess_pieces.create(x_pos: 1, y_pos: 3, color: 'white', type: 'Bishop')
        chess_pieces.create(x_pos: 1, y_pos: 6, color: 'white', type: 'Bishop')

        chess_pieces.create(x_pos: 1, y_pos: 4, color: 'white', type: 'Queen')
        chess_pieces.create(x_pos: 1, y_pos: 5, color: 'white', type: 'King')

        #place remaining black pieces
        chess_pieces.create(x_pos: 8, y_pos: 1, color: 'black', type: 'Rook')
        chess_pieces.create(x_pos: 8, y_pos: 8, color: 'black', type: 'Rook')

        chess_pieces.create(x_pos: 8, y_pos: 2, color: 'black', type: 'Knight')
        chess_pieces.create(x_pos: 8, y_pos: 7, color: 'black', type: 'Knight')

        chess_pieces.create(x_pos: 8, y_pos: 3, color: 'black', type: 'Bishop')
        chess_pieces.create(x_pos: 8, y_pos: 6, color: 'black', type: 'Bishop')

        chess_pieces.create(x_pos: 8, y_pos: 4, color: 'black', type: 'Queen')
        chess_pieces.create(x_pos: 8, y_pos: 5, color: 'black', type: 'King')
        
    end

end
