require 'spec_helper'

describe TransactionsController do

  before(:all) do
    @transaction = FactoryGirl.create(:transaction)
  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      assigns(:transactions).should_not be_nil
    end
  end

  describe "POST 'import'" do
    it "returns http success" do
      filepath = Rack::Test::UploadedFile.new([Rails.root, 'example_input.tab'].join('/'))

      expect {
        post 'import', {dump: {dumpfile: filepath}}
      }.to change(Transaction, :count).by(4)
    end

    it "returns redirect due validation error" do
      post 'import', {dump: {wrong: 'param'}}
      response.should redirect_to root_path
    end
  end

end
