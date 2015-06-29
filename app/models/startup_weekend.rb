require 'icalendar'
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
  extend SimpleCalendar
  has_calendar attribute: :fecha
  friendly_id :titulo, use: :slugged
  has_many :organizadores
  has_many :ideas_presentadas
  has_many :startups
  default_scope     ->{ order(:titulo) }
  scope :futuro,    ->{ where("fecha > ?", Date.today + 2.days) }
  scope :pasado,    ->{ where("fecha < ?", Date.today - 2.days) }
  scope :presente,  ->{ where("fecha between ? and ?", Date.today - 2.days, Date.today) }

  validates :fecha, :titulo, :descripcion, presence: true

  def status
    futuro? || pasado? || en_accion?
  end

  def status_class
    futuro_class? || pasado_class? || en_accion_class?
  end

  def futuro?
    "pasará" if fecha > Date.today + 2.days
  end
  def pasado?
    "ya pasó" if fecha < Date.today - 2.days
  end
  def en_accion?
    "en vivo" if !pasado? && !futuro?
  end
  def futuro_class?
    "futuro" if futuro?
  end
  def pasado_class?
    "pasado" if pasado?
  end
  def en_accion_class?
    "presente" if en_accion?
  end

  def al_calendario
    transformar = Icalendar::Calendar.new
    transformar.event do |e|
      e.dtstart = Icalendar::Values::Date.new(self.fecha)
      e.dtend = Icalendar::Values::Date.new(self.fecha + 1.hour)
      e.summary = self.titulo
      e.description = self.descripcion
    end
    transformar.publish
    transformar.to_ical
  end
end
