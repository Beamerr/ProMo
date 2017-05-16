class Document < ApplicationRecord
	has_attached_file :image

	validates_format_of :doc, :with => %r{\.(docx|doc|pdf)\z}i
end
