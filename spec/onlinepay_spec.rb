require './lib/onlinepay'

RSpec.configure do |config|
  # Use color in STDOUT
  config.color = true

  # other config options here...    

end

describe "Onlinepay" do 

  describe "Payments" do
    context "when initialize a payments object" do 

      let(:payment) { Onlinepay::Payments.new("車子",50,"CNY") }

      it "amount of payment object eq 50" do
        expect(payment.amount).to eq(50)
      end

      it "currency of payment object eq CNY" do
        expect(payment.currency).to eq("CNY")
      end

    end

    context "when lists all payments"

      let(:lists) { Onlinepay::Payments.lists(date_from: "2017-03-01", date_to: "2017-03-20", page: 1, per_page: 700, operation_type: nil) }
      
      it "return json response" do
        expect(lists).to be_instance_of(Hash)
      end
  end
    
end