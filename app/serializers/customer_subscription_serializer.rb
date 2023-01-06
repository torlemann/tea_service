class CustomerSubscriptionSerializer
    include JSONAPI::Serializer 
    attributes :title, :price, :status, :frequency, :tea_id
end