require 'spec_helper'
require_relative 'factories'

describe 'Instantiations' do
  let(:json) { build(:json_digital_object_with_instantiations, digital_object_id: '123') }
  let(:digital_object) { DigitalObject.create_from_json(json) }

  it "Can be created with Digital Objects" do
    expect(digital_object.instantiation.length).to eq(2)
  end

  it "Can have all the expected attributes populated" do
    instantiation = digital_object.instantiation.sample
    instantiation.keys.each do |key|
      expect(instantiation[key]).to_not eq(nil)
    end
  end

  it "Can have EssenceTracks associated" do
    instantiation = digital_object.instantiation.sample
    expect(instantiation.essence_track.length).to eq(2)
  end
end