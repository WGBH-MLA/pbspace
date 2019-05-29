require_relative 'utils'

Sequel.migration do

  up do
    obj = self[:enumeration].where(name: "linked_agent_role").first
    add_editable_enum_values(obj, [ "Contributor", "Distributor", "Presenter", "Publisher" ])
  end

end