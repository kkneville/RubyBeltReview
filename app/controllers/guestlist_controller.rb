class GuestlistController < ApplicationController
  
  def index
  end

  def new
  end

  def create
    guestlist = Guestlist.new
    guestlist.guest_id = current_user.id
    guestlist.party_id = params[:id]
    guestlist.save
    return redirect_to events_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

end
