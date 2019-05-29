require_relative 'utils'

Sequel.migration do
  up do
    terms =  [ "anc", "asp", "asd", "asp", "asd", "apr", "bce", "cmo", "cap", "csd", "cop", "cpt", "cpa", "cnt", "cod", "cdp", "dsc", "dop", "exd", "exp", "flm", "fla", "gpd", "gpe", "gus", "lgt", "mua", "msp", "pmg", "pru", "pas", "pjc", "pjs", "rec", "scw", "sne", "sts", "sup", "vde", "voa", "wrt" ]

    enum = self[:enumeration].filter(:name => 'linked_agent_archival_record_relators').select(:id).first
    terms.each do |term|
      unless self[:enumeration_value].filter(:enumeration_id => enum[:id], :value => term).count > 0
        counter = self[:enumeration_value].filter(:enumeration_id => enum[:id]).order(:position).select(:position).last[:position]
        self[:enumeration_value].insert( :enumeration_id  => enum[:id], :value => term, :readonly => 0, :position => counter + 1 )
      end
    end

  end


  down do
  end

end

