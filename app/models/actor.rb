class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def self.full_name
    first = self.first_name
    last = self.last_name
    join(first," ",last)
  end


end
