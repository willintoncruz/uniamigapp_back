class ActividadsController < ApplicationController
  before_action :set_actividad, only: [:show, :update, :destroy]

  # GET /actividads
  def index
    @actividads = Actividad.all

    render json: @actividads
  end

  # GET /actividads/1
  def show
    render json: @actividad
  end

  # POST /actividads
  def create
    @actividad = Actividad.new(actividad_params)

    if @actividad.save
      render json: @actividad, status: :created, location: @actividad
    else
      render json: @actividad.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /actividads/1
  def update
    if @actividad.update(actividad_params)
      render json: @actividad
    else
      render json: @actividad.errors, status: :unprocessable_entity
    end
  end

  # DELETE /actividads/1
  def destroy
    @actividad.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actividad
      @actividad = Actividad.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def actividad_params
      params.require(:actividad).permit(:nombre, :descripcion, :persona_id)
    end
end