class SmileysController < ApplicationController
  before_action :set_smiley, only: [:show, :edit, :update, :destroy, :upvote]

  # GET /smileys
  # GET /smileys.json
  def index
    @smileys = Smiley.all
  end

  # GET /smileys/1
  # GET /smileys/1.json
  def show
  end

  # GET /smileys/new
  def new
    @smiley = Smiley.new
  end

  # GET /smileys/1/edit
  def edit
  end

  # POST /smileys
  # POST /smileys.json
  def create
    @smiley = Smiley.new(smiley_params)

    respond_to do |format|
      if @smiley.save
        format.html { redirect_to @smiley, notice: 'Smiley was successfully created.' }
        format.json { render :show, status: :created, location: @smiley }
      else
        format.html { render :new }
        format.json { render json: @smiley.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smileys/1
  # PATCH/PUT /smileys/1.json
  def update
    respond_to do |format|
      if @smiley.update(smiley_params)
        format.html { redirect_to @smiley, notice: 'Smiley was successfully updated.' }
        format.json { render :show, status: :ok, location: @smiley }
      else
        format.html { render :edit }
        format.json { render json: @smiley.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smileys/1
  # DELETE /smileys/1.json
  def destroy
    @smiley.destroy
    respond_to do |format|
      format.html { redirect_to smileys_url, notice: 'Smiley was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # upvote_from user
  def upvote
    @smiley = Smiley.find(params[:id])
    if current_user
      @smiley.upvote_from current_user
    else
      session[:session_id] = request.remote_ip
      voter = Votersession.find_or_create_by(session_id: session[:session_id])
      @smiley.upvote_from voter
    end
    redirect_to new_feedback_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smiley
      @smiley = Smiley.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def smiley_params
      params.require(:smiley).permit(:image)
    end
end
