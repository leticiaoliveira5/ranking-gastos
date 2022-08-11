require 'rails_helper'

RSpec.describe LoadData, type: :service do

  let(:file) { fixture_file_upload('spec/fixtures/csv_file.csv', 'text/csv')  }
  let(:subject) { described_class.new(csv_file: file) }

  describe '#call' do
    it 'insere os dados do estado nas tabelas deputy e expenditure' do
      expect{ subject.call }.to change(Deputy, :count).by(1)
        .and change(Expenditure, :count).by(2)
      expect(Deputy.first.name).to eq 'Pinheirinho'
      expect(Deputy.first.registration_id).to eq 204524
    end
  end

  describe '#valid?' do
    context 'quando o formato do arquivo é CSV' do
      it { expect(subject.valid?).to be true }
    end

    context 'quando o formato do arquivo não é CSV' do
      let(:file) { fixture_file_upload('spec/fixtures/test.png', 'image/png') }

      it { expect(subject.valid?).to be false}
    end
  end
end
