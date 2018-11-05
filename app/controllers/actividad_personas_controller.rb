class ActividadPersonasController < ApplicationController
  before_action :set_actividad_persona, only: [:show, :update, :destroy]

  # GET /actividad_personas
  def index
    @actividad_personas = ActividadPersona.all

    render json: @actividad_personas
  end

  # GET /actividad_personas/1
  def show
    render json: @actividad_persona
  end

  # POST /actividad_personas
  def create
    @actividad_persona = ActividadPersona.new(actividad_persona_params)

    if @actividad_persona.save
      render json: @actividad_persona, status: :created, location: @actividad_persona
    else
      render json: @actividad_persona.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /actividad_personas/1
  def update
    if @actividad_persona.update(actividad_persona_params)
      render json: @actividad_persona
    else
      render json: @actividad_persona.errors, status: :unprocessable_entity
    end
  end

  # DELETE /actividad_personas/1
  def destroy
    @actividad_persona.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actividad_persona
      @actividad_persona = ActividadPersona.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def actividad_persona_params
      params.require(:actividad_persona).permit(:persona_id, :actividad_id)
    end
end
