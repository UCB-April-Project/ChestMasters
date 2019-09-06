class ChessPiecesController < ApplicationController

    def show
        moves_x = []
        moves_y = []
        for i in 1..8
            for j in 1..8
                if current_piece.valid_move?(i,j) == true
                    moves_x << i
                    moves_y << j
                end
            end
        end
        #render :json moves_x
        #render :json moves_y
    end

    def update
        current_piece.update_attributes(piece_params)
        render plain: 'updated'
    end

    def destroy
        current_piece.destroy
        render plain: 'destroyed'
    end

    private

    helper_method :current_piece
    def current_piece
        @current_piece ||= ChessPiece.find(params[:id])
    end

    def piece_params
        params.permit(:x_pos, :y_pos)
    end
end
