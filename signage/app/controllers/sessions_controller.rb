class SessionsController < ApplicationController
  def new
  end

  def create
    merchant = Merchant.find_by(email: params[:session][:email].downcase)
    if merchant && merchant.authenticate(params[:session][:password])
      sign_in merchant
      redirect_to merchant
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
