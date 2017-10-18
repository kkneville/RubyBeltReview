class AttendancesController < ApplicationController
  def index
  end

  def new
  end

  def create
    attendance = Attendance.new
    attendance.attending_id = current_user.id
    attendance.attends_id = params[:id]
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
