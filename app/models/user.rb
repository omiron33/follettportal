class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_save :capitalize_names

  has_one :region
  belongs_to :store, optional: true
  has_many :managed_stores, through: :region, source: :stores
  has_many :events

  protected

    def capitalize_names
      self.first_name = first_name.camelcase
      self.last_name = last_name.camelcase
    end

end
