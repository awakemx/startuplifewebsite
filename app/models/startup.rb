class Startup < ActiveRecord::Base
  belongs_to :user
  belongs_to :startup_weekend
  extend FriendlyId
  friendly_id :nombre, use: :slugged
  default_scope     ->{ order(:nombre) }
  validates :nombre, :descripcion, presence: true
end
