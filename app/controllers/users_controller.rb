class UsersController < ApplicationController
  def index
  end

  def new
    @countries = ["US", "TX", "UK", "CH", "CAN", "DE", "FR", "DM", "SW", "IT", "KE", "SA"]
    return render "users/new.html.erb"
  end

  def create
    print user_params
    user = User.new(user_params)
    if user.valid?
      user.save
      session[:user_id]= user.id
      return redirect_to events_path
    end
    
    flash[:errors] = user.errors.full_messages    

    return redirect_to :back
  end

  def show
    @user = User.find(session[:user_id])
    @person = User.find(params[:id])
    return render "/users/show.html.erb"
  end 

  def edit
  end

  def update
  end

  def delete
  end

  private
    def user_params
      params.require(:user).permit(:firstname, :lastname, :email, :city, :state, :password, :password_confirmation)
    end 
end
