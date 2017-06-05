class Document < ApplicationRecord

	

	has_attached_file :doc, 
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename", 
	styles: { thumb: "100x100#" }

    validates_attachment_content_type :doc, content_type: /\Aimage\/.*\Z/

end
