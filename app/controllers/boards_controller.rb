class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :edit, :update, :destroy]

  # GET /boards
  # GET /boards.json
  def index
    @boards = Board.all.order("created_at DESC")
    @lates_boards = Board.all.order("created_at DESC").limit(5)
  end

  # GET /boards/1
  # GET /boards/1.json
  def show
    # @board = Board.find(params[:id])
    @lates_boards = Board.all.order("created_at DESC").limit(5)
    @opinions = @board.opinions
  end

  # GET /boards/new
  def new
    # @user = current_user
    @board = Board.new
  end

  # GET /boards/1/edit
  def edit
    # @user = current_user
  end

  # POST /boards
  # POST /boards.json
  def create
    @board = Board.new(board_params)
    file = params[:board][:image]
    @board.set_image(file)
    @board.save
    redirect_to @board
  end

  # PATCH/PUT /boards/1
  # PATCH/PUT /boards/1.json
  def update
    respond_to do |format|
      if @board.update(board_params)
        format.html { redirect_to @board, notice: 'Board was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boards/1
  # DELETE /boards/1.json
  def destroy
    @board.destroy
    respond_to do |format|
      format.html { redirect_to boards_url }
      format.json { head :no_content }
    end
  end

  def search
    @boards = Board.where(['body LIKE ?', "%#{params[:search_word]}%"])
  end

  def category_search
    @boards = Board.where(category: params[:category])
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board
      @board = Board.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def board_params
      params.require(:board).permit(:title, :body, :user_id, :category)
    end
end
