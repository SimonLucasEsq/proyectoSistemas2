class ProfessorParticipant < ApplicationRecord
  belongs_to :extension
  belongs_to :professor
end
