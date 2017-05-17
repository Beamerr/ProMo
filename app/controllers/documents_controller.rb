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
		params.permit(:document)
	end
end
