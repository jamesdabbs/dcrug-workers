class CatRequest < ActiveRecord::Base
  def fulfill!
    Cats.display! link
  end
end
