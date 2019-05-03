module Instantiations

  def self.included(base)
    base.one_to_many :instantiation

    base.def_nested_record(:the_property => :instantiations,
                           :contains_records_of_type => :instantiation,
                           :corresponding_to_association  => :instantiation)
  end

end
