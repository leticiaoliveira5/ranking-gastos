class HomeController < ApplicationController
  def index
    redirect_to file_upload_new_path unless Deputy.count.positive?

    @deputies = Deputy.all
    @ranking = @deputies.includes(:expenditures).sort_by(&:amount_spent).reverse
  end
end
