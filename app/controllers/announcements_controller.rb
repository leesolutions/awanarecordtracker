class AnnouncementsController < ApplicationController

  def index
    @announcements = Announcement.all
  end

  def show
    @announcement = Announcement.find(params[:id])
  end

  def new
    @announcement = Announcement.new
  end

  def edit
    @announcement = Announcement.find(params[:id])
  end

  def create
    @announcement = Announcement.new(params[:announcement])
    if @announcement.save
      redirect_to @announcement, notice: 'Announcement was successfully created.' }
    else
      render action: "new"
    end
  end

  def update
    @announcement = Announcement.find(params[:id])
    if @announcement.update_attributes(params[:announcement])
      redirect_to @announcement, notice: 'Announcement was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @announcement = Announcement.find(params[:id])
    @announcement.destroy
    redirect_to announcements_url
  end

end
