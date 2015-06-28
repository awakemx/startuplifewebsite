class StartupWeekend < ActiveRecord::Base
  extend FriendlyId
  friendly_id :titulo, use: :slugged
  default_scope ->{ order(:titulo) }
  scope :futuro, -> { where("? < ?", Time.now.to_date, :fecha)}
  scope :presente, -> { where("? >= ? && ? <= ?", Time.now.to_date, :fecha, Time.now.to_date, :fecha)}
  scope :pasado, -> { where("? > ?", Time.now.to_date, :fecha)}
end
