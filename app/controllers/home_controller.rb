class HomeController < ApplicationController
  def index
    redirect_to file_upload_new_path unless Deputy.count.positive?

    @deputies = Deputy.all
    @ranking = @deputies.includes(:expenditures).sort_by(&:amount_spent).reverse

  def clean
    Deputy.delete_all
    Expenditure.delete_all

    redirect_to file_upload_new_path
  end
end
