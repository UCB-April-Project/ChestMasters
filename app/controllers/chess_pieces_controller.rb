class ChessPiecesController < ApplicationController
    
    def show
        moves = []
        for i in 1..8
            for j in 1..8
                if (current_piece.valid_move?(i,j)))
                    moves.push((x,y))
                end
            end
        end
        render :json moves
    end

    def update
        current_piece.update_attributes(piece_params)
        render status: :ok
    end

    private

    helper_method :current_piece
    def current_piece
        @current_piece ||= ChessPiece.find(params[:id])
    end

    def piece_params
        params.require(:Chess_piece).permit(:x_pos, :y_pos)
    end
end
