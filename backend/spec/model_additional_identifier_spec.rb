require 'spec_helper'
require_relative 'factories'

describe 'AdditionalIdentifiers' do
  let(:json) { build(:json_digital_object_with_additional_identifiers, digital_object_id: '123') }
  let(:digital_object) { DigitalObject.create_from_json(json) }

  it "Can be created with Digital Objects" do
    expect(digital_object.additional_identifier.length).to eq(2)
  end

  it "Can have all the expected attributes populated" do
    additional_identifier = digital_object.additional_identifier.sample
    additional_identifier.keys.each do |key|
      expect(additional_identifier[key]).to_not eq(nil)
    end
  end
end