class Arrendatario < ApplicationRecord
has_many :alojamientos, dependent: :destroy
