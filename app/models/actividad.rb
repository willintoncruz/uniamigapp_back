class Actividad < ApplicationRecord
    has_many :actividad_persona
    belongs_to :persona
end
