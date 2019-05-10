class EssenceTrack < Sequel::Model(:essence_track)
  include ASModel
  corresponds_to JSONModel(:essence_track)
  set_model_scope :global
end
