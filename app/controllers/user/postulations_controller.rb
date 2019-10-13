class User::PostulationsController < User::UsersController
  before_action :set_postulation, only: [:show, :edit, :update, :destroy]

  # GET /postulations
  # GET /postulations.json
  def index
    @postulations = Postulation.all
  end

  # GET /postulations/1
  # GET /postulations/1.json
  def show
  end

  # GET /postulations/new
  def new
    @postulation = Postulation.new
  end

  # GET /postulations/1/edit
  def edit
  end

  # POST /postulations
  # POST /postulations.json
  def create
    @postulation = Postulation.new(postulation_params)

    respond_to do |format|
      if @postulation.save
        format.html { redirect_to @postulation, notice: "Postulation was successfully created." }
        format.json { render :show, status: :created, location: @postulation }
      else
        format.html { render :new }
        format.json { render json: @postulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postulations/1
  # PATCH/PUT /postulations/1.json
  def update
    respond_to do |format|
      if @postulation.update(postulation_params)
        format.html { redirect_to @postulation, notice: "Postulation was successfully updated." }
        format.json { render :show, status: :ok, location: @postulation }
      else
        format.html { render :edit }
        format.json { render json: @postulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postulations/1
  # DELETE /postulations/1.json
  def destroy
    @postulation.destroy
    respond_to do |format|
      format.html { redirect_to postulations_url, notice: "Postulation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_postulation
    @postulation = Postulation.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def postulation_params
    params.require(:postulation).permit(:name, :lastname, :email, :message, :user_event_id)
  end
end
