class StartupWeekend < ActiveRecord::Base
  extend FriendlyId
  friendly_id :titulo, use: :slugged
  default_scope     ->{ order(:titulo) }
  scope :futuro,    ->{ where("fecha > ?", Date.today) }
  scope :presente,  ->{ where('fecha = ? AND fecha <= ?', Date.today, Date.today + 2.days) }
  scope :pasado,    ->{ where("fecha < ?", Date.today) }
end
