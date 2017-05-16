class Document < ApplicationRecord
	has_attached_file :doc, styles: { thumb: ["100x100#", :png ]}

	validates_format_of :doc, :with => %r{\.(docx|doc|pdf)\z}i
end
