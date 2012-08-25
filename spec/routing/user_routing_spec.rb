require 'spec_helper'


class UsersController < ApplicationController
end

describe UsersController do
  before(:each) do
    ApplicationRouter.any_instance.stub(:matches?).and_return(true)
  end

  it "routes to users#index" do
    get("/users").should route_to("users#index")
  end
  it "routes to users#destroy" do
    delete("/users/1").should route_to("users#destroy", :id => "1")
  end

end
