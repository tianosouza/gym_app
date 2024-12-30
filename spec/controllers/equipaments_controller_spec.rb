require "rails_helper"

RSpec.describe EquipamentsController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      equipament = create(:equipament)
      get :show, params: { id: equipament.to_param }
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Equipament" do
        expect {
          post :create, params: { equipament: attributes_for(:equipament) }
        }.to change(Equipament, :count).by(1)
      end
    end

    context "with invalid params" do
      it "returns an unprocessable entity response" do
        post :create, params: { equipament: attributes_for(:equipament, :invalid) }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) { { name: "New name" } }

      it "updates the requested equipament" do
        equipament = create(:equipament)
        put :update, params: { id: equipament.to_param, equipament: new_attributes }
        equipament.reload
        expect(equipament.name).to eq("New name")
      end
    end

    context "with invalid params" do
      it "returns an unprocessable entity response" do
        equipament = create(:equipament)
        put :update, params: { id: equipament.to_param, equipament: attributes_for(:equipament, :invalid) }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested equipament" do
      equipament = create(:equipament)
      expect {
        delete :destroy, params: { id: equipament.to_param }
      }.to change(Equipament, :count).by(-1)
    end
  end
end
