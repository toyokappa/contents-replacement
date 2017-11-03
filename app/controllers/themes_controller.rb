class ThemesController < ApplicationController
  def index
    @themes = Theme.all
  end

  def show
    @theme = Theme.find(params[:id])
    @replacements = @theme.replacements.contents_order
  end

  def edit
    @theme = Theme.find(params[:id])
    @theme.replacements.build
  end

  def update
    @theme = Theme.find(params[:id])
    if @theme.update(theme_params)
      redirect_to @theme
    else
      render "edit"
    end
  end

  private

    def theme_params
      params.require(:theme).permit(:name, replacements_attributes: [:id, :name, :order, :_destroy])
    end
end
