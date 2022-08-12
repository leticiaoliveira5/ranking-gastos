require 'rails_helper'

RSpec.describe DeputiesController, type: :controller do
  describe "#show" do
    it 'renderiza template show' do
      deputy = Deputy.create(registration_id: 123)
      get :show, params: { id: deputy.id }

      expect(response).to render_template(:show)
    end
  end
end
