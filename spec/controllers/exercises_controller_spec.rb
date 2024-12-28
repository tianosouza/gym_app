require "rails_helper"


RSpec.describe ExercisesController, type: :controller do
  let(:user) { create(:user) }

  describe "GET #index" do
    it "returns a success response" do
      get :index, params: { user_id: user.id }
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    let(:exercise) { create(:exercise, user: user) }
    it "returns a success response" do
      get :show, params: { user_id: user.id, id: exercise.id }
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    let(:exercise) { create(:exercise, user: user) }

    context "with valid params" do
      it "creates a new Exercise" do
        expect {
          post :create, params: { user: user.id, exercise: attributes_for(:exercise, user_id: user.id) }
        }.to change(Exercise, :count).by(1)
      end

      it "renders a JSON response with the new exercise" do
        request.headers["Accept"] = "application/json"
        post :create, params: { user: user.id, exercise: attributes_for(:exercise, user_id: user.id) }
        expect(response).to have_http_status(:created)
        expect(response.location).to eq(exercise_url(Exercise.last))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new exercise" do
        post :create, params: { user_id: user.id, exercise: attributes_for(:exercise, name: nil) }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PUT #update" do
    let(:exercise) { create(:exercise, user: user) }

    context "with valid params" do
      let(:new_attributes) { { name: "New name" } }

      it "updates the requested exercise" do
        put :update, params: { user_id: user.id, id: exercise.id, exercise: new_attributes }
        exercise.reload
        expect(exercise.name).to eq("New name")
      end

      it "renders a JSON response with the exercise" do
        request.headers["Accept"] = "application/json"
        put :update, params: { user_id: user.id, id: exercise.id, exercise: new_attributes }
        expect(response).to have_http_status(:ok)
        expect(response.location).to eq(exercise_url(exercise))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the exercise" do
        put :update, params: { user_id: user.id, id: exercise.id, exercise: attributes_for(:exercise, name: nil) }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE #destroy" do
    let!(:exercise) { create(:exercise, user: user) }

    it "destroys the requested exercise" do
      expect {
        delete :destroy, params: { user_id: user.id, id: exercise.id }
      }.to change(Exercise, :count).by(-1)
    end
  end
end
