class Frontend::FrontendsController < ApplicationController
  layout 'application'

  def index
    @events = User::Event.next_events
  end

end
