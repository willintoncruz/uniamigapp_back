class TareasController < ApplicationController
  before_action :set_tarea, only: [:show, :update, :destroy]
  before_action :set_usuario

  # GET /tareas
  def index
    @tareas = @usuario.tareas

    render json: @tareas
  end

  # GET /tareas/1
  def show
    render json: @tarea
  end

  # POST /tareas
  def create
    @tarea = @usuario.tareas.build(tarea_params)

    if @tarea.save
      render json: @tarea, status: :created
    else
      render json: @tarea.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tareas/1
  def update
    if @tarea.update(tarea_params)
      render json: @tarea
    else
      render json: @tarea.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tareas/1
  def destroy
    @tarea.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarea
      @tarea = Tarea.find(params[:id])
      #@tarea = @usuario.tareas.find(params[:id])
    end

    def set_usuario
      @usuario = Usuario.find(params[:usuario_id])
    end

    # Only allow a trusted parameter "white list" through.
    def tarea_params
      params.require(:tarea).permit(:usuario_id, :titulo, :finalizada)
    end
end
