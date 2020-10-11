require "rails_helper"

RSpec.describe UserLocationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/user_locations").to route_to("user_locations#index")
    end

    it "routes to #new" do
      expect(get: "/user_locations/new").to route_to("user_locations#new")
    end

    it "routes to #show" do
      expect(get: "/user_locations/1").to route_to("user_locations#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/user_locations/1/edit").to route_to("user_locations#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/user_locations").to route_to("user_locations#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/user_locations/1").to route_to("user_locations#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/user_locations/1").to route_to("user_locations#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/user_locations/1").to route_to("user_locations#destroy", id: "1")
    end
  end
end
