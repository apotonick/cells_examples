class Post < ActiveRecord::Base
  
  def self.newest
    find(:first, {:order => "created_at DESC"})
  end
end
