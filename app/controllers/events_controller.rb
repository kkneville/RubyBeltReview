class EventsController < ApplicationController
  
  def index
    @close = Event.where(country: current_user.country)
    @far = Event.where.not(country: current_user.country)

    @countries = ["US", "TX", "UK", "CH", "CAN", "DE", "FR", "DM", "SW", "IT", "KE", "SA"]
    @guestlists = Guestlist.all
 end

  def new
  end

   def create
      @event = Event.new(event_params)
      if @event.valid?
        @event.save
        session[:event_id]= @event.id
        return redirect_to events_path
      end
      
      flash[:errors] = @event.errors.full_messages    

      return redirect_to :back
    end

  

  def show
    @event = Event.find(params[:id])
    @guests = @event.guests
    @comments = Comment.all.where(event_id: @event.id)
  end

  def edit
    @countries = ["US", "TX", "UK", "CH", "CAN", "DE", "FR", "DM", "SW", "IT", "KE", "SA"]
    @event = Event.find(params[:id])
    if not @event.user == current_user
      return redirect_to events_path
    end
      
  end

  def update
    event = Event.find(params[:id])
    event.name = params[:name]
    if params[:newdate]
      event.date = params[:newdate]
    else  
      event.date = params[:date]
    end
    event.location = params[:location]
    event.country = params[:country]
    event.save
    return redirect_to events_path
  end

  def delete
    Event.find(params[:id]).delete
    return redirect_to events_path
  end

  private
    def event_params
      params.require(:event).permit(:name, :date, :location, :country).merge(user: current_user)
    end 
  
end
