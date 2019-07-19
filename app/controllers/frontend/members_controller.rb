class Frontend::MembersController < Frontend::FrontendsController
  before_action :set_user_member, only: [:show]

  # GET /user/members
  # GET /user/members.json
  def index
    @members = User::Member.all
  end

  # GET /user/members/1
  # GET /user/members/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_member
      @user_member = User::Member.find(params[:id])
    end
end
