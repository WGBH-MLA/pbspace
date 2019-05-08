require 'rspec'
require_relative 'factories'
require_relative '../model/instantiation'
require_relative '../../../../backend/spec/spec_helper'
require_relative '../../../../backend/spec/spec_slugs_helper'

describe 'Instantiation' do
  it "Digital Objects can be created with an Instantiation" do
    json = build(:json_digital_object_with_instantiation)
    digital_object = DigitalObject.create_from_json(json, :repo_id => $repo_id)
    expect(digital_object.instantiations.length).to eq(1)
  end
end