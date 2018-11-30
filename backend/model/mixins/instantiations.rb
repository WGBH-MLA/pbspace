module Instantiations

  def self.included(base)
    base.one_to_many :instantiation

    base.def_nested_record(:the_property => :instantiations,
                           :contains_records_of_type => :instantiations,
                           :corresponding_to_association  => :instantiation,
                           :is_array => false)
  end

end
