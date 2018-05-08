require 'rails_helper'
require 'byebug'
RSpec.describe UsersController, type: :controller do
  context 'GET #index' do
    it "index page should load at first" do
      get :index
      expect(response).to be_success #response.success
    end
  end

  context "GET #show" do
    it "show some data in view" do
      user = User.create(name: "csd", email: "sdfs", phone: "34567")
      get :show, params: {id: user.to_param}
      expect(response).to be_success
    end
    
  end
end
# RSpec.describe UsersController do
#   describe "GET index" do
#     it "assigns @users" do
#       user = User.create
#       get :index
#       expect(assigns(:users)).to eq(user)
#     end

#     it "renders the index template" do
#       get :index
#       expect(response).to render_template("index")
#     end
#   end


#      context "POST create" do

#      it "redirects to pending users page" do
#        params = { user: { name: "velu", email: "e@example.tld", phone: "2014-12-31" } }
#        byebug
#        post :create, params
#        byebug
#        expect(response).to redirect_to(users_path)
#      end

#      it "calls User.create_and_request_confirmation(params)" do
#        email = "e@example.tl"
#        phone = "2015-02-28"
#          .with({ email: email, phone: phone })
#        post :create, { user: { email: email, phone: phone } }
#      end

#      it "raises an error if missing params email" do
#        params = { user: { phone: "2015-09-28" } }
#        expect do
#          post :create, params
#        end.to raise_error ActiveRecord::RecordInvalid
#      end

#    end

  # context "GET confirm" do

  #   it "confirms the subscription" do
  #     subscription = create(:subscription,
  #       email: "e@e.tld",
  #       confirmation_token: Subscription.generate_confirmation_token
  #     )
  #     expect(subscription.confirmed?).to eq(false)

  #     params = { confirmation_token: subscription.confirmation_token }
  #     get :confirm, params

  #     expect(subscription.reload.confirmed?).to eq(true)
  #     expect(assigns(:subscription)).to eq(subscription)
  #   end

  #   it "responds with 404 Not Found for unknown confirmation token" do
  #     params = { confirmation_token: "an-unknown-token" }
  #     expect do
  #       get :confirm, params
  #     end.to raise_error ActiveRecord::RecordNotFound
  #   end

  # end

 # end