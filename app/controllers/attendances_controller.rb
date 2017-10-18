class AttendancesController < ApplicationController
  def index
  end

  def new
  end

  def create
    @user = current_user
    @event = params[:id]
    attendance = Attendance.new
    attendance.attending_id = @user.id
    attendance.attends_id = @event
    attendance.save
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
