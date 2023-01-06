require 'rails_helper'
require 'pry'

RSpec.describe "Subscription" do
    describe 'create' do
        it 'can create an tea subscription for a customer' do

        customer_1 = Customer.create!(first_name: "Ralph", last_name: "Piccarro", email: "shmoly@shmomail.com", street_address: "1400 Dis Street")
        tea_1 = Tea.create!(title: "Lapsang Souchong", description: "dark and smokey", temperature: 180, brew_time: 5)

        sub_params = {
            title: "#{customer_1.first_name} #{customer_1.last_name}'s #{tea_1.title} Sub",
            price: 10,
            status: 1,
            frequency: 2,
            tea_id: tea_1.id,
            customer_id: customer_1.id
        }

        headers = {"CONTENT_TYPE" => "application/json"}

        post "/api/v1/subscriptions", headers: headers, params: JSON.generate(sub_params)

        expect(response).to be_successful

        subscription = JSON.parse(response.body, symbolize_names: true)

        expect(subscription).to be_a Hash
        binding.pry
        expect(subscription).to have_key(:data)
        expect(subscription[:data]).to have_key(:id)
        expect(subscription[:data]).to have_key(:type)
        expect(subscription[:data]).to have_key(:attributes)
        expect(subscription[:data][:attributes]).to have_key(:customer_id)
        end
    end
end