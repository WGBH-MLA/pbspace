class Instantiation < Sequel::Model(:instantiation)
  include ASModel
  corresponds_to JSONModel(:instantiation)
  set_model_scope :global
  one_to_many :essence_track
  def_nested_record( :the_property => :essence_tracks,
                     :contains_records_of_type => :essence_track,
                     :corresponding_to_association  => :essence_track)

end
