class HomeController < ApplicationController
  def index
    if Deputy.count.zero?
      redirect_to file_upload_new_path
    else
      @deputies = Deputy.all
      @ranking = @deputies.includes(:expenditures).sort_by(&:amount_spent).reverse
      @year = @deputies.first&.expenditures&.first&.year
    end
  end

  def clean
    Deputy.delete_all
    Expenditure.delete_all

    redirect_to file_upload_new_path
  end
end
