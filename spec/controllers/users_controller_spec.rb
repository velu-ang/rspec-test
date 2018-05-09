require 'rails_helper'
require 'byebug'
RSpec.describe UsersController, type: :controller do
context "user get from json" do
  it "test using an api on rspec" do
    get("index")
    p "index data"
    json = response.status
    puts json
    resp = expect(json).to eql(200)
    puts resp
  end
end
context "user create" do
  it "create user by using rspec new " do
    @user = get("index")
    expect(@user.responds_code).to eql(200)
  end
  it "do create on api" do
    post "create", params: {:user => {name: "velusamy", email: "velusamy", phone: "velusamy"}}
    expect(@user.status).to eql(302)
  end
end

  # puts "inside user controller"

  # context 'GET #index' do
  #   puts "index method"
  #   it "index page should load at first" do
  #     puts "loaded"
  #     user = User.all
  #     puts user
  #     get :index
  #     resp = expect(response).to be_successful #response.success
  #     puts resp
  #   end
  # end

  # context "GET #show" do
  #   puts "inside show"
  #   it "show some data in view" do
  #     user = User.create(name: "csd", email: "sdfs", phone: "34567")
  #     get :show, params: {id: user.to_param}
  #     puts user
  #     resp = expect(response).to be_successful
  #     puts "show response #{resp}"
  #   end
    
  # end
  # context "Delete #delete" do
  #   it "delete an record" do
  #     user = User.create

  #     delete :destroy, params: {id: user.id}
  #     puts "delete user #{user.id}"
  #     puts "respon #{response}"
  #     resp = expect(response).to be_successful
  #     puts "delete #{resp}"
  #   end
  # end
  # context "new #new" do
  #   it "get new on controller" do
  #     user = User.new
  #     expect(response).to be_successful
  #   end
  # end
  # context "Update #update" do |val|
  #   it "update records" do
  #     user = User.create(name: "velu", email: "velu", phone: "velu")
  #     puts user.name
  #     patch :users , params: {:user=> {name: "velusamy", email: "velusamy", phone: "velusamy"}, :format => "json", :method => "patch"}
  #     #expect(flash[:notice]).to #eq "User was successfully created."
  #     resp = expect(response).to be_successful
  #     puts "response #{resp}"
  #   end
    
  # end
  # context "create #create" do
  #   it "create an record" do 
  #     post :create, params: {:user=> {name: "velusamy", email: "velusamy", phone: "velusamy", photo: "file:///C:/Users/velusamy/Downloads/my%20photo1.jpg"}}
  #     resp = expect(response).to be_successful
  #     expect(flash[:notice]).to eq "User was successfully created."
  #     puts "created #{resp}"
  #   end
  #   it "error while creation" do 
  #     post :create, params: {name: "velusamy", email: "velusamy", phone: "velusamy"}
  #     resp = expect(response).to be_failiure
  #     puts "created #{resp}"
  #   end
  # end


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