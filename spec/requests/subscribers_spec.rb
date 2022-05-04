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

RSpec.describe "/subscribers", type: :request do
  
  # Subscriber. As you add validations to Subscriber, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Subscriber.create! valid_attributes
      get subscribers_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      subscriber = Subscriber.create! valid_attributes
      get subscriber_url(subscriber)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_subscriber_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      subscriber = Subscriber.create! valid_attributes
      get edit_subscriber_url(subscriber)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Subscriber" do
        expect {
          post subscribers_url, params: { subscriber: valid_attributes }
        }.to change(Subscriber, :count).by(1)
      end

      it "redirects to the created subscriber" do
        post subscribers_url, params: { subscriber: valid_attributes }
        expect(response).to redirect_to(subscriber_url(Subscriber.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Subscriber" do
        expect {
          post subscribers_url, params: { subscriber: invalid_attributes }
        }.to change(Subscriber, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post subscribers_url, params: { subscriber: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested subscriber" do
        subscriber = Subscriber.create! valid_attributes
        patch subscriber_url(subscriber), params: { subscriber: new_attributes }
        subscriber.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the subscriber" do
        subscriber = Subscriber.create! valid_attributes
        patch subscriber_url(subscriber), params: { subscriber: new_attributes }
        subscriber.reload
        expect(response).to redirect_to(subscriber_url(subscriber))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        subscriber = Subscriber.create! valid_attributes
        patch subscriber_url(subscriber), params: { subscriber: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested subscriber" do
      subscriber = Subscriber.create! valid_attributes
      expect {
        delete subscriber_url(subscriber)
      }.to change(Subscriber, :count).by(-1)
    end

    it "redirects to the subscribers list" do
      subscriber = Subscriber.create! valid_attributes
      delete subscriber_url(subscriber)
      expect(response).to redirect_to(subscribers_url)
    end
  end
end
