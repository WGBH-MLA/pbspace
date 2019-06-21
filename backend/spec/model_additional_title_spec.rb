require 'spec_helper'
require_relative 'factories'

describe 'AdditionalTitles' do
  let(:json) { build(:json_digital_object_with_additional_titles, digital_object_id: '123') }
  let(:digital_object) { DigitalObject.create_from_json(json) }

  it "Can be created with Digital Objects" do
    expect(digital_object.additional_title.length).to eq(2)
  end

  it "Can have all the expected attributes populated" do
    additional_title = digital_object.additional_title.sample
    additional_title.keys.each do |key|
      expect(additional_title[key]).to_not eq(nil)
    end
  end
end