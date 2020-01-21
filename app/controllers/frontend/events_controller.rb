class Frontend::EventsController < Frontend::FrontendsController
  before_action :set_user_event, only: [:show]

  # GET /user/events
  # GET /user/events.json
  def index
    @past_events = User::Event.active_events.past_events
    @next_events = User::Event.active_events.next_events
  end

  # GET /user/events/1
  # GET /user/events/1.json
  def show
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user_event
    @user_event = User::Event.find_by(slug: params[:id])
  end
end
