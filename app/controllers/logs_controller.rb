class LogsController < ApplicationController

    before_action :authenticate_user!
    
def new
    @context = context
    @log = @context.logs.new
    @statuses = Log.statuses
    @categories = Log.categories
    @users = User.all
  end

  def create
    @context = context
    @log = @context.logs.new(log_params)
    @statuses = Log.statuses
    @categories = Log.categories 
    @users = User.all  
    if @log.save
      redirect_to context_url(context), notice: "The log has been successfully created."
    else
      render(:new, :error => @context.errors)    
    end
  end

  def edit
    @context = context
    @log = context.logs.find(params[:id])
    @statuses = Log.statuses
    @categories = Log.categories  
    @users = User.all      
  end
    
  def show
    @context = context
    @log = context.logs.find(params[:id])
    @statuses = Log.statuses
    @categories = Log.categories
    @users = User.all      
  end    

  def update
    @context = context
    @log = @context.logs.find(params[:id]) 
    @statuses = Log.statuses
    @categories = Log.categories
    @users = User.all  
    if @log.update_attributes(log_params)    
      redirect_to context_url(context), notice: "The log has been updated"
    end
  end

 
private
  
  def log_params
    params.require(:log).permit!
  end

  def context
    case
      when params[:board_id]
        id = params[:board_id]
        Board.find(params[:board_id])
      when  params[:box_id]
        id = params[:box_id]
        Box.find(params[:box_id])
      else
        id = params[:machine_id]
        Machine.find(params[:machine_id]) 
     end  
  end      
      
    def context_url(context)
     case
      when Board === context
        board_path(context)
      when Box === context
        box_path(context)
      else
        machine_path(context)
      end  
    end      
  
end

