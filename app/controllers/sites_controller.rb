class SitesController < ApplicationController
    
    before_action :authenticate_user!
    
  def index
    @sites = Site.all
    @customers = Customer.all
    @machines = Machine.all
    @boxes = Box.all
    @boards = Board.all
    @fat_tests = FatTest.all    
  end

  def show 
    @site = Site.find(params[:id])
    @machines = Machine.all
    @customers = Customer.all
  end

  def new
    @customers = Customer.all
    @machines = Machine.all
    @site = Site.new 
  end
    
  def create
    @customers = Customer.all
    @machines = Machine.all
    @site = Site.new(site_params) 
    if @site.save         
         flash[:notice] = "Site has been saved successfully."
      redirect_to(sites_path, :notice => "Site has been saved successfully.")
    else
      render(:new, :error => @site.errors)
    end  
  end

  def edit
    @site = Site.find(params[:id])
    @customers = Customer.all
    @machines = Machine.all
  end

  def update
    @site = Site.find(params[:id])
    if @site.update_attributes(site_params)
      redirect_to sites_path, notice: "The site has been updated."
    end  
  end

  def destroy
    @site = Site.find(params[:id])
    @site.destroy
  end
    
#  def service 
#    if @site.logs.status == "open"
#     @site.servicestatus == "Service"
#    end 
#  end      
    
    
private
    
  def site_params
    params.require(:site).permit!
  end
    
end
