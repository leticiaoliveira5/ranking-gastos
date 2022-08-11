require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe '#index' do
    context 'quando existem deputados' do
      before { Deputy.create(registration_id: 123) }

      it 'renderiza a página inicial' do
        get :index

        expect(response).to render_template(:index)
      end
    end

    context 'quando não existem deputados' do
      before { Deputy.delete_all }

      it 'redireciona para novo upload' do
        get :index

        expect(response).to redirect_to file_upload_new_path
      end
    end
  end

  describe '#clean' do
    before do
      Deputy.create(registration_id: 123)
      Expenditure.create(deputy_registration_id: 123)
    end

    it 'deleta todos os objetos do banco de dados e redireciona para upload do arquivo' do
      get :clean

      expect(response).to redirect_to file_upload_new_path
      expect(Deputy.count).to eq 0
      expect(Expenditure.count).to eq 0
    end
  end
end