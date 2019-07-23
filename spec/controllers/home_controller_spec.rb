require 'rails_helper'

RSpec.describe HomeController do
  describe "GET index" do
    it "renders the index template" do
      get :index
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
