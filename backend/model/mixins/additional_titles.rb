module AdditionalTitles

  def self.included(base)
    base.one_to_many :additional_title

    base.def_nested_record(:the_property => :additional_titles,
                           :contains_records_of_type => :additional_title,
                           :corresponding_to_association  => :additional_title)
  end

end
