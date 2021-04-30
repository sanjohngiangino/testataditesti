class Songgoer < ApplicationRecord
	has_many :lyrics
	has_many :canzones
end
