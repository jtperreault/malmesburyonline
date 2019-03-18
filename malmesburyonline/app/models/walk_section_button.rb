class WalkSectionButton < ApplicationRecord
  belongs_to :walk_section
  belongs_to :next_walk_section, foreign_key: 'next_walk_section_id', class_name: 'WalkSection'
end
