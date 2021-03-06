 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/user_affiliations", type: :request do
  # UserAffiliation. As you add validations to UserAffiliation, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      UserAffiliation.create! valid_attributes
      get user_affiliations_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      user_affiliation = UserAffiliation.create! valid_attributes
      get user_affiliation_url(user_affiliation)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_user_affiliation_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      user_affiliation = UserAffiliation.create! valid_attributes
      get edit_user_affiliation_url(user_affiliation)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new UserAffiliation" do
        expect {
          post user_affiliations_url, params: { user_affiliation: valid_attributes }
        }.to change(UserAffiliation, :count).by(1)
      end

      it "redirects to the created user_affiliation" do
        post user_affiliations_url, params: { user_affiliation: valid_attributes }
        expect(response).to redirect_to(user_affiliation_url(UserAffiliation.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new UserAffiliation" do
        expect {
          post user_affiliations_url, params: { user_affiliation: invalid_attributes }
        }.to change(UserAffiliation, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post user_affiliations_url, params: { user_affiliation: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested user_affiliation" do
        user_affiliation = UserAffiliation.create! valid_attributes
        patch user_affiliation_url(user_affiliation), params: { user_affiliation: new_attributes }
        user_affiliation.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the user_affiliation" do
        user_affiliation = UserAffiliation.create! valid_attributes
        patch user_affiliation_url(user_affiliation), params: { user_affiliation: new_attributes }
        user_affiliation.reload
        expect(response).to redirect_to(user_affiliation_url(user_affiliation))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        user_affiliation = UserAffiliation.create! valid_attributes
        patch user_affiliation_url(user_affiliation), params: { user_affiliation: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested user_affiliation" do
      user_affiliation = UserAffiliation.create! valid_attributes
      expect {
        delete user_affiliation_url(user_affiliation)
      }.to change(UserAffiliation, :count).by(-1)
    end

    it "redirects to the user_affiliations list" do
      user_affiliation = UserAffiliation.create! valid_attributes
      delete user_affiliation_url(user_affiliation)
      expect(response).to redirect_to(user_affiliations_url)
    end
  end
end
