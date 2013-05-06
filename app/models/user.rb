class User < ActiveRecord::Base
  has_many :tweets

  def registered?
    if e= User.where(name: self.name).first
      self.id = e['id']
    end
  end
end
