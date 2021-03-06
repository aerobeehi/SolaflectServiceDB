class MachinesController < ApplicationController
    
    before_action :authenticate_user!
    
  def index
    @machines = Machine.all
    @boxes = Box.all
    @boards = Board.all
    @sites = Site.all
    @fat_tests = FatTest.all    
  end

  def show 
    @machine = Machine.find(params[:id])
    @sites = Site.all
    @fat_tests = FatTest.all  
  end

  def new
    @boxes = Box.all
    @machine = Machine.new 
  end
    
  def create
    @machine = Machine.new(machine_params) 
    if @machine.save         
         flash[:notice] = "Box <b>#{ @machine.machine_sn }</b> has been saved successfully."
      redirect_to(machines_path, :notice => "Box <b>#{ @machine.machine_sn }</b> has been saved successfully.")
    else
      render(:new, :error => @machine.errors)
    end  
  end

  def edit
    @machine = Machine.find(params[:id])
    @fat_tests = FatTest.all    
  end

  def update
    @machine = Machine.find(params[:id])
    if @machine.update_attributes(machine_params)
      redirect_to machines_path, notice: "The machine has been updated."
    end  
  end

  def destroy
    @machine = Machine.find(params[:id])
    @machine.destroy
  end
    
#  def service 
#    if @machine.logs.status == "open"
#     @machine.servicestatus == "Service"
#    end 
#  end      
    
    
private
    
  def machine_params
    params.require(:machine).permit!
  end
    
end
