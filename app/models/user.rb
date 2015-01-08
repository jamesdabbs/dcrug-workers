class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :cat_requests

  def cat_me!
    cat_request = cat_requests.create! link: Cats.sample
    cat_request.fulfill!
  end
end
