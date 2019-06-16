class User::UsersController < ApplicationController
  before_action :authenticate_user!
  layout 'user'
  def index
  end
end
