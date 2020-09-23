class PagesController < ApplicationController
    def index
      @pages = Page.all
    end
    def show
      @page = Page.find(params[:id])
      #render text: @page.tittle#params[:id]
    end
    def new
      @page = Page.new
    end
    def create
      @page = Page.new(page_params)
      @page.save
      redirect_to @page
    end
    def edit
      @page = Page.find(params[:id])
    end
    def update
      @page = Page.find(params[:id])
      @page.update(page_params)
      redirect_to @page
    end
    private
      def page_params
        params.require(:page).permit(:tittle, :body, :slug)
      end  
end
