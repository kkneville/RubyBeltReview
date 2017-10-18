class EventsController < ApplicationController
  
  def index
    # @near_events = Event.where('country == ?', country).order(:date)
    # @far_events = Event.where('country != ?', country).order(:date)

    @close = Event.where(country: current_user.country)
    print @close
    @far = Event.where.not(country: current_user.country)
    print @far

    @countries = ["US", "TX", "UK", "CH", "CAN", "DE", "FR", "DM", "SW", "IT", "KE", "SA"]
    # return render "events/index.html.erb"
 end

  def new
  end

   def create
      @event = Event.new(event_params)
      if @event.valid?
        @event.save
        session[:event_id]= @event.id
        return redirect_to index_path
      end
      
      flash[:errors] = event.errors.full_messages    

      return redirect_to :back
    end

  

  def show
    @event = Event.find(params[:id])
    @attending = User.all
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
    def event_params
      params.require(:event).permit(:name, :date, :location, :country).merge(user: current_user)
    end 
  
end
