class CustomersController < ApplicationController
 
    before_action :authenticate_user!
    
  def index
    @customers = Customer.all
     
  end

    
  def show
    @customer = Customer.find(params[:id])
   
  end

  def new
    @customer = Customer.new  
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to customers_path, notice: "The customer has been successfully created."
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update_attributes(customer_params)
      redirect_to customers_path, notice: "The customer has been updated"
    end  
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
  end
    

    
private
  def customer_params
    params.require(:customer).permit!
  end

end


