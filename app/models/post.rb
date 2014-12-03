class Post < ActiveRecord::Base
  belongs_to :category

  has_attached_file :image, :styles => { :medium => "238x238>", 
                                   :thumb => "100x100>"
                                 }  
end
