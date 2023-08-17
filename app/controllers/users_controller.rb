class UsersController < ApplicationController

  def new
    @user = User.new
  end


  def create
    @user = User.new(user_params)
    if @user.save
      begin
        UserMailer.welcome_email(@user).deliver_now
        flash[:notice] = 'User created and welcome email sent!'
      rescue => e
        Rails.logger.error "Error sending email: #{e.message}"
        flash[:alert] = 'User created, but there was an issue sending the welcome email.'
      end
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
