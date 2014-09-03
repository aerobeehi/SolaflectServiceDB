class BoardsController < ApplicationController
 
    before_action :authenticate_user!
    
  def index
    @machines = Machine.all
    @boxes = Box.all
    @boards = Board.all
  end

    
  def show
    @board = Board.find(params[:id])
    @users = User.all  
  end

  def new
    @board = Board.new  
  end

  def create
    @board = Board.new(board_params)
    if @board.save         
         flash[:notice] = "Board has been saved successfully."
      redirect_to(boards_path, :notice => "Board has been saved successfully.")
    else
      render(:new, :error => @board.errors)
    end    
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @boards = Board.all
    @board = Board.find(params[:id])
    if @board.update_attributes(board_params)
      redirect_to boards_path, notice: "The board has been updated"
    end  
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy
  end
    
    
private
  def board_params
    params.require(:board).permit!
  end
end
