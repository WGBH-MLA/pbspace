module AdditionalIdentifiers

  def self.included(base)
    base.one_to_many :additional_identifier

    base.def_nested_record(:the_property => :additional_identifiers,
                           :contains_records_of_type => :additional_identifier,
                           :corresponding_to_association  => :additional_identifier)
  end

end
