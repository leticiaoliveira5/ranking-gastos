require 'rails_helper'

RSpec.describe Deputy, type: :model do
  describe 'validation' do
    it 'is not valid without registration_id' do
      expect(subject).not_to be_valid
    end

    it 'is valid with registration_id' do
      subject.registration_id = 11

      expect(subject).to be_valid
    end
  end

  describe '#amount_spent' do
    it 'retorna o total gasto pelo deputado' do
      deputy = Deputy.create(registration_id: 123)
      deputy.expenditures.create(net_amount: 100)
      deputy.expenditures.create(net_amount: 500)

      expect(deputy.amount_spent).to eq 600
    end
  end

  describe '#biggest_expenditure' do
    it 'retornar o maior gasto do deputado' do
      deputy = Deputy.create(registration_id: 123)
      deputy.expenditures.create(net_amount: 100)
      deputy.expenditures.create(net_amount: 500)

      expect(deputy.biggest_expenditure).to eq 500
    end
  end

  describe '#picture_url' do
    it 'retorna a url com o identificador do deputado' do
      subject.registration_id = 123456

      expect(subject.picture_url).to be_a String
      expect(subject.picture_url).to include '123456'
    end
  end
end
