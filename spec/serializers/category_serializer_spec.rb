require 'rails_helper'

RSpec.describe CategorySerializer, type: :serializer do
  context "when render index" do
    let(:category) { create :category, name: "category1" }
    let(:serializer) { describe_class.new(category) }
    let(:serialization) { ActiveModelSerializers::Adapter.create(serializer) }

    let(:subject ) { JSON.parse(serialization.to_json) }

    it "includes movie atribute" do
      expect(subject['movies'][0]['name']).to eq "category1" 
    end
  end
end