class Frontend::EventsController < Frontend::FrontendsController
  before_action :set_user_event, only: [:show]

  # GET /user/events
  # GET /user/events.json
  def index
    @events = User::Event.all
  end

  # GET /user/events/1
  # GET /user/events/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_event
      @user_event = User::Event.find(params[:id])
    end
end
