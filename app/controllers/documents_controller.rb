class DocumentsController < ApplicationController
	def index
		@documents = Document.order('created_at')
	end

	def new
		@documents = Document.new
	end

	def create
		@document = Document.new(photo_params)
		if @photo.save
			flash[:success] = "The document was added!"
			redirect_to root_path
		else
			render 'new'
		end
	end


	private

	def doc_params
		params.require(:document).permit(:doc, :title)
	end
end
