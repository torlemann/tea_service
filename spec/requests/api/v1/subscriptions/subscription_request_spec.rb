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
            expect(subscription).to have_key(:data)
            expect(subscription[:data]).to have_key(:id)
            expect(subscription[:data]).to have_key(:type)
            expect(subscription[:data]).to have_key(:attributes)
            expect(subscription[:data][:attributes]).to be_a Hash
            expect(subscription[:data][:attributes].keys).to eq([:title, :price, :status, :frequency, :tea_id, :customer_id])
        end
    end

    describe 'cancel' do
        it 'can cancel an tea subscription for a customer' do

            customer_1 = Customer.create!(first_name: "Ralph", last_name: "Piccarro", email: "shmoly@shmomail.com", street_address: "1400 Dis Street")
            tea_1 = Tea.create!(title: "Lapsang Souchong", description: "dark and smokey", temperature: 180, brew_time: 5)

            subscription_1 = Subscription.create!(
                title: "#{customer_1.first_name} #{customer_1.last_name}'s #{tea_1.title} Sub",
                price: 10,
                status: 1,
                frequency: 2,
                tea_id: tea_1.id,
                customer_id: customer_1.id
            )
            headers = { 'CONTENT_TYPE' => 'application/json' }

            delete "/api/v1/subscriptions/#{subscription_1.id}", headers: headers, params: JSON.generate(subscription_1)

            expect(response).to be_successful
        end
    end

    describe 'index' do 
        it 'returns all active and inactive subscriptions' do 
            customer_1 = Customer.create!(first_name: "Ralph", last_name: "Piccarro", email: "shmoly@shmomail.com", street_address: "1400 Dis Street")
            customer_2 = Customer.create!(first_name: "Schroeder", last_name: "Ricardo", email: "sk8rboi@shmomail.com", street_address: "1234 Sesame Street")
            tea_1 = Tea.create!(title: "Lapsang Souchong", description: "dark and smokey", temperature: 180, brew_time: 5)
            tea_2 = Tea.create!(title: "Earl Grey", description: "Picard's Choicest Blend", temperature: 180, brew_time: 5)
            tea_3 = Tea.create!(title: "Rooibos", description: "African Red Herbal", temperature: 180, brew_time: 5)

            subscription_1 = Subscription.create!(
                title: "#{customer_1.first_name} #{customer_1.last_name}'s #{tea_1.title} Sub",
                price: 10,
                status: 1,
                frequency: 2,
                tea_id: tea_1.id,
                customer_id: customer_1.id
            )

            subscription_2 = Subscription.create!(
                title: "#{customer_2.first_name} #{customer_2.last_name}'s #{tea_3.title} Sub",
                price: 10,
                status: 1,
                frequency: 2,
                tea_id: tea_3.id,
                customer_id: customer_2.id
            )

            subscription_3 = Subscription.create!(
                title: "#{customer_1.first_name} #{customer_1.last_name}'s #{tea_2.title} Sub",
                price: 10,
                status: 1,
                frequency: 2,
                tea_id: tea_2.id,
                customer_id: customer_1.id
            )

            headers = { 'CONTENT_TYPE' => 'application/json' }
            get "/api/v1/subscriptions/#{customer_1.id}", headers: headers, params: JSON.generate(customer_1.id)
    
            expect(response).to be_successful
            customer_subscriptions = JSON.parse(response.body, symbolize_names: true)

            expect(customer_subscriptions).to be_a Hash
            expect(customer_subscriptions).to have_key(:data)
            expect(customer_subscriptions[:data]).to be_an Array
            expect(customer_subscriptions[:data].length).to eq 2
            expect(customer_subscriptions[:data][0]).to have_key(:type)
            expect(customer_subscriptions[:data][0]).to have_key(:id)
            expect(customer_subscriptions[:data][0]).to have_key(:attributes)
            expect(customer_subscriptions[:data][0][:attributes]).to be_a Hash
            # expect(customer_subscriptions[:data][:attributes].keys.count).to eq 5
            expect(customer_subscriptions[:data][0][:attributes][:title]).to eq("Ralph Piccarro's Lapsang Souchong Sub")
            expect(customer_subscriptions[:data][0][:attributes][:title]).to_not eq("Schroeder Ricardo's Rooibos Sub")
            expect(customer_subscriptions[:data][1][:attributes][:title]).to eq("Ralph Piccarro's Earl Grey Sub")
            expect(customer_subscriptions[:data][1][:attributes][:title]).to_not eq("Schroeder Ricardo's Rooibos Sub")
        end
      end 
end