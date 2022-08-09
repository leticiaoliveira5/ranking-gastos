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
end
