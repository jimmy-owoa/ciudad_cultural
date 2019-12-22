class Frontend::PostulationsController < Frontend::FrontendsController
  # GET /postulations/new
  def new
    @postulation = Postulation.new
    @events = User::Event.active_events.next_events
  end

  # POST /postulations
  # POST /postulations.json
  def create
    @postulation = Postulation.new(postulation_params)

    respond_to do |format|
      if @postulation.save
        format.html { redirect_to root_path, notice: "Su postulación fué enviada con éxito." }
        format.json { render :show, status: :created, location: @postulation }
      else
        format.html { render :new }
        format.json { render json: @postulation.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def postulation_params
    params.require(:postulation).permit(:name, :lastname, :email, :message, :user_event_id, :phone, :stand, images: [])
  end
end
