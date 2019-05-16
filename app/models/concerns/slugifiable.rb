module Slugifiable
  
  def slug
    self.username.downcase.gsub(' ', '-')
  end
  
  def find_by_slug(s)
    
  end
end