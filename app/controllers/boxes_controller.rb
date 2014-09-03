class BoxesController < ApplicationController
    
    before_action :authenticate_user!
    
  def index
    @boxes = Box.all
    @boards = Board.all
    @machines = Machine.all
  end

  def show 
    @box = Box.find(params[:id])
    @machines = Machine.all
  end

  def new
    @boards = Board.all 
    @box = Box.new 
  end
    
  def create
    @boards = Board.all 
    @box = Box.new(box_params) 
    if @box.save         
         flash[:notice] = "Box <b>#{ @box.box_sn }</b> has been saved successfully."
      redirect_to(boxes_path, :notice => "Box <b>#{ @box.box_sn }</b> has been saved successfully.")
    else
      render(:new, :error => @box.errors)
    end    
  end

  def edit
    @boards = Board.all 
    @box = Box.find(params[:id])
  end

  def update
    @box = Box.find(params[:id])
    if @box.update_attributes(box_params)
      redirect_to boxes_path, notice: "The box has been updated."
    end  
  end

def destroy
    @box = Box.find(params[:id])
    @box.destroy
  end
    
    
private
    
  def box_params
    params.require(:box).permit!
  end

    
end