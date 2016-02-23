class User < ActiveRecord::Base
  has_attached_file :image, styles: {thumb:'150x150#'}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  has_many :ads
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
