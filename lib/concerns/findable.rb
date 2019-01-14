module Concerns::Findable
 
    def find_by_name(name)
      self.all.find {|song| song.name == name}
    end 
    
    def find_or_create_by_name(name)
      existing = self.find_by_name(name)
      if existing == nil 
        self.create(name)
      else 
        existing 
      end
    end
  
end