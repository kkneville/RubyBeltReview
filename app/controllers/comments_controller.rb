class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def create
    comment = Comment.new 
    comment.user = current_user
    event = Event.find(params[:event_id])
    comment.event = event
    comment.content = params[:content]
    comment.save
    return redirect_to event_detail_path id:event.id
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
