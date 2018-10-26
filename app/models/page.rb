class Page < ApplicationRecord
   attr_accessor :parent_id
   has_ancestry
   after_create :assign_the_master_node_to_the_record

   def assign_the_master_node_to_the_record
     self.master_node = return_master_ancestor(self)
     if(self.id == self.master_node.to_i)
       self.master_node = nil
     end  
     self.save
   end

   def return_master_ancestor(ancestor)
      binding.pry
      if(ancestor.ancestors.length>0)
         return_master_ancestor(ancestor.ancestors.first)
      else
         return ancestor.id  
      end  
   end
   #this can be used to get access to the root nodes and the descendants 
end
