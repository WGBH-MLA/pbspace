require_relative 'utils'

Sequel.migration do
  up do
    obj = self[:enumeration].where(name: "digital_object_digital_object_type").first
    add_editable_enum_values(obj, [ "Advertisement", "Air Check", "Album", "Brand", "Clip", "Collection", "Element", "Episode", "Event", "Excerpt", "Framework", "Franchise", "Item", "Media Object", "Pilot", "Program", "Project", "Scene", "Season", "Segment" ])
  end
end
