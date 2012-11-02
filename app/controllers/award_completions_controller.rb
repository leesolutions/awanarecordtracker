class AwardCompletionsController < ApplicationController

  before_filter :authenticate_user!

  # GET /award_completions
  # GET /award_completions.json
  def index
    @award_completions = AwardCompletion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @award_completions }
    end
  end

  # GET /award_completions/1
  # GET /award_completions/1.json
  def show
    @award_completion = AwardCompletion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @award_completion }
    end
  end

  # GET /award_completions/new
  # GET /award_completions/new.json
  def new
    @award_completion = AwardCompletion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @award_completion }
    end
  end

  # GET /award_completions/1/edit
  def edit
    @award_completion = AwardCompletion.find(params[:id])
  end

  # POST /award_completions
  # POST /award_completions.json
  def create
    @award_completion = AwardCompletion.new(params[:award_completion])

    respond_to do |format|
      if @award_completion.save
        format.html { redirect_to @award_completion, notice: 'Award completion was successfully created.' }
        format.json { render json: @award_completion, status: :created, location: @award_completion }
      else
        format.html { render action: "new" }
        format.json { render json: @award_completion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /award_completions/1
  # PUT /award_completions/1.json
  def update
    @award_completion = AwardCompletion.find(params[:id])

    respond_to do |format|
      if @award_completion.update_attributes(params[:award_completion])
        format.html { redirect_to @award_completion, notice: 'Award completion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @award_completion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /award_completions/1
  # DELETE /award_completions/1.json
  def destroy
    @award_completion = AwardCompletion.find(params[:id])
    @award_completion.destroy

    respond_to do |format|
      format.html { redirect_to award_completions_url }
      format.json { head :no_content }
    end
  end
end
