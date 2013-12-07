class MerchantsController < ApplicationController
  def new
    @merchant=Merchant.new
  end
  def show
    @merchant=Merchant.find(params[:id])
  end
  def create
    @merchant=Merchant.new(merchant_params)    
    if @merchant.save
      flash.now[:success] = "Account Created!"
      render '/sessions/new'
    else
      render 'new'
    end
  end
  private
  def merchant_params
    params.require(:merchant).permit(:name, :email, :password,
                                   :password_confirmation, :location, :company)
  end
    
end
