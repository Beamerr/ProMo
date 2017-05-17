class Document < ApplicationRecord

	has_attached_file :doc, styles: { thumb: "100x100#" }, default_url: "/assets/Ian Beamish CV2017png.png"

  validates_attachment_content_type :doc, content_type: /\Aimage\/.*\Z/

end
