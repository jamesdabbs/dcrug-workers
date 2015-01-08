class CatServer
  include Sidekiq::Worker

  def perform user_id
    user = User.find_by_id user_id
    return unless user
    user.cat_me!
  end
end
