def add_editable_enum_values(obj, values, default = nil, opts={})
  id = obj[:id]
  id_of_default = nil
  readonly_values = Array(opts[:readonly_values])
  # we updated the schema to include ordering for enum values. so, we will need
  # those for future adding enums
  include_position = self.schema(:enumeration_value).flatten.include?(:position)

  values.each_with_index do |value, i|
    props = { :enumeration_id => id, :value => value, :readonly => readonly_values.include?(value) ? 1 : 0 }

    all_enum_values = self[:enumeration_value].where(enumeration_id: id).all.length

    props[:position] = all_enum_values + i if include_position

    self[:enumeration_value].insert(props)
  end
end
