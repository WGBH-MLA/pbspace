class AdditionalIdentifier < Sequel::Model(:additional_identifier)
  include ASModel
  corresponds_to JSONModel(:additional_identifier)
  set_model_scope :global
end
