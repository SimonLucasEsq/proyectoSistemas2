class ProfessorParticipantsController < ApplicationController
  before_action :set_professor_participant, only: [:show, :edit, :update, :destroy]

  # GET /professor_participants
  # GET /professor_participants.json
  def index
    @professor_participants = ProfessorParticipant.all
  end

  # GET /professor_participants/1
  # GET /professor_participants/1.json
  def show
  end

  # GET /professor_participants/new
  def new
    @professor_participant = ProfessorParticipant.new
    @extension_id = params[:id] #se obtiene una variable para saber a que extension pertenece el participante
    respond_to do |f|
      f.js
    end
  end

  # GET /professor_participants/1/edit
  def edit
  end

  # POST /professor_participants
  # POST /professor_participants.json
  def create
    @professor_participant = ProfessorParticipant.new(professor_participant_params)

    respond_to do |format|
      if @professor_participant.save
        format.html { redirect_to @professor_participant, notice: 'Professor participant was successfully created.' }
        format.json { render :show, status: :created, location: @professor_participant }
      else
        format.html { render :new }
        format.json { render json: @professor_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professor_participants/1
  # PATCH/PUT /professor_participants/1.json
  def update
    respond_to do |format|
      if @professor_participant.update(professor_participant_params)
        format.html { redirect_to @professor_participant, notice: 'Professor participant was successfully updated.' }
        format.json { render :show, status: :ok, location: @professor_participant }
      else
        format.html { render :edit }
        format.json { render json: @professor_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professor_participants/1
  # DELETE /professor_participants/1.json
  def destroy
    @professor_participant.destroy
    respond_to do |format|
      format.html { redirect_to professor_participants_url, notice: 'Professor participant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professor_participant
      @professor_participant = ProfessorParticipant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def professor_participant_params
      params.require(:professor_participant).permit(:extension_id, :professor_id)
    end
end
