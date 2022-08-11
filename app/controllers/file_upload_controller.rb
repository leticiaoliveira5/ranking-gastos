class FileUploadController < ApplicationController
  def load_data
    service = LoadData.new(csv_file: params[:csv_file])
    if service.valid?
      if service.call
        redirect_to root_path, notice: t('data_load.success')
      else
        redirect_to file_upload_new_path, alert: t('data_load.failure')
      end
    else
      redirect_to file_upload_new_path, alert: t('data_load.invalid_format')
    end
  end
end
