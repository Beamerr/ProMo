class Document < ApplicationRecord
  
	has_attached_file :doc
    validates_attachment_content_type :doc, content_type: /\Aimage/ 
end
