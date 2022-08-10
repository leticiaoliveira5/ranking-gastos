class FileUploadController < ApplicationController
  def load_data
    file = params[:csv_file]
    if file.content_type.in?(['csv', 'text/csv'])
      if LoadData.new(csv_file: file.path).call
        redirect_to root_path
      else
        raise 'Error'
      end
    else
      raise 'Not a CSV File'
    end
  end
end
