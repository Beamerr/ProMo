class DocumentsController < ApplicationController

	def index
		@documents = Document.order('created_at')
	end

	def new
		@document = Document.new
	end

	def create
	  @document = Document.new(doc_params)
		if @document.save
			flash[:success] = "The document was added!"
			redirect_to root_path
		else
			render '_new'
		end
	end

	def destroy
    @document = Document.find(params[:id])
    if @document.destroy
      flash[:notice] = "Successfully deleted photo!"
      redirect_to root_path
    else
      flash[:alert] = "Error deleting photo!"
    end
  end

	private

	def doc_params
		params.require(:document).permit(:doc, :title, :created_at, :updated_at, :doc_file_name, :doc_content_type, :doc_file_size, :doc_updated_at, :image_file_name, :image_content_type, :image_file_size, :image_updated_at)
	end
end
