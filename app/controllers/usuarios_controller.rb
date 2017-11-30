class UsuariosController < ApplicationController
  layout 'template'
   before_action :authenticate_user!
   before_action :set_user, only: [:show, :edit, :update,:destroy]
   protect_from_forgery with: :null_session, only: [:show,:create,:update,:destroy]

  def index
		@users=User.all
	end
  

  # GET /user/new
  def new
    @user = User.new
  end
# GET /user/
  def show
  end

  # GET /user/1/edit
  def edit
  end

  # POST /users
  # POST /users
  def create
    @user = User.new(user_params)
    @user.add_role(params[:role])
    @user.save
    redirect_to usuario_index_path
   
   end
 



  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
   if @user.update(user_params)
          redirect_to @user, notice: 'Usuario fue actualizado.' 
    end
  end 

  # DELETE Users
  def destroy
   User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to usuario_path
  end



  private
    # Use callbacks to share common setup or constraints between actions.
  

    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name,:last_name,:email,:password,:password_confirmation)
    end
end
