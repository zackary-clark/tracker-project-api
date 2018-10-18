class MaxesController < ProtectedController
  before_action :set_max, only: [:show, :update, :destroy]

  # GET /maxes
  # TODO remove index from maxes when testing is done, or change to get all for current user
  def index
    @maxes = Max.all

    render json: @maxes
  end

  # GET /maxes/1
  def show
    render json: @max
  end

  # POST /maxes
  def create
    @max = current_user.maxes.build(max_params)

    if @max.save
        render json: @max, status: :created
    else
        render json: @max.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /maxes/1
  def update
    if @max.update(max_params)
      render json: @max
    else
      render json: @max.errors, status: :unprocessable_entity
    end
  end

  # DELETE /maxes/1
  def destroy
    @max.destroy

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_max
      @max = current_user.maxes.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def max_params
      params.require(:max).permit(:date, :squat1RM, :bench1RM, :deadlift1RM, :press1RM)
    end
end
