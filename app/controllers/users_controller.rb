class UsersController < ApplicationController
  def index
  end

  def new
    76
    @countries = ["US", "TX", "UK", "CH", "CAN", "DE", "FR", "DM", "SW", "IT", "KE", "SA"]
    return render "users/new.html.erb"
  end

  def create
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
    @countries = ["US", "TX", "UK", "CH", "CAN", "DE", "FR", "DM", "SW", "IT", "KE", "SA"]
    @user = current_user
    return render "/users/show.html.erb"
  end 

  def edit
  end

  def update
    user = update_user(user_params)
    if user.valid?
      user.save
    end  
    return redirect_to "/showuser"  
  end

  def delete
  end

  private
    def user_params
      params.require(:user).permit(:firstname, :lastname, :email, :location, :country, :password, :password_confirmation)
    end 

    def update_user(params)
    user = User.find(current_user.id)
    user.firstname = params[:firstname]
    user.lastname = params[:lastname]
    user.email = params[:email]
    user.location = params[:location]
    user.country = params[:country]
    user.save
    return user
  end 
end
