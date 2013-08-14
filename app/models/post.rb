class Post < ActiveRecord::Base
  blongs_to :master
end
