# == Schema Information
#
# Table name: startup_weekends
#
#  id          :integer          not null, primary key
#  titulo      :string
#  logo        :string
#  descripcion :text
#  slug        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  facebook    :string
#  twitter     :string
#  sitioweb    :string
#  fecha       :date
#  correo      :string
#

class StartupWeekend < ActiveRecord::Base
  extend FriendlyId
  friendly_id :titulo, use: :slugged
  has_many :organizadores
  has_many :ideas_presentadas
  default_scope     ->{ order(:titulo) }
  scope :futuro,    ->{ where("fecha > ?", Date.today) }
  scope :presente,  ->{ where('fecha = ? AND fecha <= ?', Date.today, Date.today + 2.days) }
  scope :pasado,    ->{ where("fecha < ?", Date.today) }
end
