class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :sns_credentials, dependent: :destroy
  has_many :products

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         :omniauthable, omniauth_providers: [:facebook, :google_oauth2]


end
