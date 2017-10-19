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
    guestlists = Guestlist.all.where(guest: current_user)
    guestlist = guestlists.all.where(party: params[:id])[0]
    guestlist.delete
    return redirect_to events_path
  end

end
