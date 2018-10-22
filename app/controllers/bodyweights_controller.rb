class BodyweightsController < ProtectedController
  before_action :set_bodyweight, only: [:show, :update, :destroy]

  # GET /bodyweights
  def index
    @bodyweights = current_user.bodyweights

    render json: @bodyweights
  end

  # GET /bodyweights/1
  def show
    render json: @bodyweight
  end

  # POST /bodyweights
  def create
    @bodyweight = current_user.bodyweights.build(bodyweight_params)

    if @bodyweight.save
      render json: @bodyweight, status: :created
    else
      render json: @bodyweight.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bodyweights/1
  def update
    if @bodyweight.update(bodyweight_params)
      render json: @bodyweight
    else
      render json: @bodyweight.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bodyweights/1
  def destroy
    @bodyweight.destroy

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bodyweight
      @bodyweight = current_user.bodyweights.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bodyweight_params
      params.require(:bodyweight).permit(:date, :weight, :notes)
    end
end
