class AdditionalTitle < Sequel::Model(:additional_title)
  include ASModel
  corresponds_to JSONModel(:additional_title)
  set_model_scope :global
end
