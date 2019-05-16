class Instantiation < Sequel::Model(:instantiation)
  include ASModel
  corresponds_to JSONModel(:instantiation)
  set_model_scope :global
end
