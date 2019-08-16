class BoardStatesController < ApplicationController
  before_action :set_board_state, only: [:show, :edit, :update, :destroy]

  # GET /board_states
  # GET /board_states.json
  def index
    @board_states = BoardState.all
  end

  # GET /board_states/1
  # GET /board_states/1.json
  def show
  end

  # GET /board_states/new
  def new
    @board_state = BoardState.new
  end

  # GET /board_states/1/edit
  def edit
  end

  # POST /board_states
  # POST /board_states.json
  def create
    @board_state = BoardState.new(board_state_params)

    respond_to do |format|
      if @board_state.save
        format.html { redirect_to @board_state, notice: 'Board state was successfully created.' }
        format.json { render :show, status: :created, location: @board_state }
      else
        format.html { render :new }
        format.json { render json: @board_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /board_states/1
  # PATCH/PUT /board_states/1.json
  def update
    respond_to do |format|
      if @board_state.update(board_state_params)
        format.html { redirect_to @board_state, notice: 'Board state was successfully updated.' }
        format.json { render :show, status: :ok, location: @board_state }
      else
        format.html { render :edit }
        format.json { render json: @board_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /board_states/1
  # DELETE /board_states/1.json
  def destroy
    @board_state.destroy
    respond_to do |format|
      format.html { redirect_to board_states_url, notice: 'Board state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board_state
      @board_state = BoardState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def board_state_params
      params.fetch(:board_state, {})
    end
end
