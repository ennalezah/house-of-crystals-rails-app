class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  private 
  
    def sign_up_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
