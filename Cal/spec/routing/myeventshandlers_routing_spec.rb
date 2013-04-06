require "spec_helper"

describe MyeventshandlersController do
  describe "routing" do

    it "routes to #index" do
      get("/myeventshandlers").should route_to("myeventshandlers#index")
    end

    it "routes to #new" do
      get("/myeventshandlers/new").should route_to("myeventshandlers#new")
    end

    it "routes to #show" do
      get("/myeventshandlers/1").should route_to("myeventshandlers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/myeventshandlers/1/edit").should route_to("myeventshandlers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/myeventshandlers").should route_to("myeventshandlers#create")
    end

    it "routes to #update" do
      put("/myeventshandlers/1").should route_to("myeventshandlers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/myeventshandlers/1").should route_to("myeventshandlers#destroy", :id => "1")
    end

  end
end
