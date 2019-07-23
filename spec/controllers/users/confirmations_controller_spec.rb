require 'rails_helper'

RSpec.describe Users::ConfirmationsController do
  describe "GET show" do
    it "voter and user should be created" do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      get :show
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
