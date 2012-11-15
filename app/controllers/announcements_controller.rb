class AnnouncementsController < ApplicationController

  load_and_authorize_resource

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if @announcement.save
      redirect_to @announcement, notice: 'Announcement was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if @announcement.update_attributes(params[:announcement])
      redirect_to @announcement, notice: 'Announcement was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @announcement.destroy
    redirect_to announcements_url
  end

end
