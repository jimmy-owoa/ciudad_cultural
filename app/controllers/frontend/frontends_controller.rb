class Frontend::FrontendsController < ApplicationController
  layout 'application'

  def index
    @events = User::Event.all
  end

end
