require 'rails_helper'

RSpec.describe FileUploadController, type: :controller do
  describe '#load_data' do
    let(:file) { fixture_file_upload('spec/fixtures/csv_file.csv', 'text/csv')  }
    let(:invalid_file) { fixture_file_upload('spec/fixtures/test.png', 'image/png')  }

    it 'quando as informações são carregadas com sucesso' do
      post :load_data, params: { csv_file: file }

      expect(response).to redirect_to(root_path)
    end

    it 'quando o arquivo não é válido' do
      post :load_data, params: { csv_file: invalid_file }

      expect(response).to redirect_to(file_upload_new_path)
    end
  end
end
