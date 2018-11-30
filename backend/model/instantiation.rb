class Instantiation < Sequel::Model(:instantiations)
  include ASModel
  corresponds_to JSONModel(:instantiations)

  set_model_scope :global

end
