class ThemesController < ApplicationController
  before_action :set_theme, only: [:show, :edit, :update]
  before_action :set_contents_order, only: [:show, :edit]
  
  def index
    @themes = Theme.all
  end

  def show
  end

  def edit
  end

  def update
    if @theme.update(theme_params)
      redirect_to @theme
    else
      render "edit"
    end
  end

  private

    def theme_params
      params.require(:theme).permit(:name, contents_order: {})
    end

    def set_theme
      @theme = Theme.find(params[:id])
    end

    def set_contents_order
      if @theme.contents_order.empty?
        Theme::TOP_CONTENTS_DEFAULT_ORDER.each.with_index(1) do |key, index|
          @theme.contents_order[key] = index
        end
      else
        @theme.contents_order = @theme.contents_order.sort_by{ |k, v| -v }.to_h
      end
    end
end
