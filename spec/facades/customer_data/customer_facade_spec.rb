require 'rails_helper'

RSpec.describe CustomerData::CustomerFacade do
  describe '#information_for_payments' do
    let!(:customer) { create(:customer) }
    subject { described_class.new(customer.id) }

    it 'returns a successful response' do
      expect(subject.information_for_payments)
        .to eq({
          "date_of_birth"=>"#{customer.date_of_birth}",
          "name"=>"#{customer.name}",
          "place_of_birth"=>"#{customer.place_of_birth}"
        })
    end
  end
end
