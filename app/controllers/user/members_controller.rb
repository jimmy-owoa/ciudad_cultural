class User::MembersController < User::UsersController
  before_action :set_user_member, only: [:show, :edit, :update, :destroy]

  # GET /user/members
  # GET /user/members.json
  def index
    @user_members = User::Member.all
  end

  # GET /user/members/1
  # GET /user/members/1.json
  def show
  end

  # GET /user/members/new
  def new
    @user_member = User::Member.new
  end

  # GET /user/members/1/edit
  def edit
  end

  # POST /user/members
  # POST /user/members.json
  def create
    @user_member = User::Member.new(user_member_params)

    respond_to do |format|
      if @user_member.save
        format.html { redirect_to @user_member, notice: 'Member was successfully created.' }
        format.json { render :show, status: :created, location: @user_member }
      else
        format.html { render :new }
        format.json { render json: @user_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user/members/1
  # PATCH/PUT /user/members/1.json
  def update
    respond_to do |format|
      if @user_member.update(user_member_params)
        format.html { redirect_to @user_member, notice: 'Member was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_member }
      else
        format.html { render :edit }
        format.json { render json: @user_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user/members/1
  # DELETE /user/members/1.json
  def destroy
    @user_member.destroy
    respond_to do |format|
      format.html { redirect_to user_members_url, notice: 'Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_member
      @user_member = User::Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_member_params
      params.require(:user_member).permit(:name, :lastname, :email, :summary, :phone, :image)
    end
end
