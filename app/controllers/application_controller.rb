class ApplicationController < ActionController::Base
  layout 'application'

  def index
    @events = User::Event.all
  end

  def caca
  end
end
