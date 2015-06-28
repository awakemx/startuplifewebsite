# == Schema Information
#
# Table name: ideas_presentadas
#
#  id                 :integer          not null, primary key
#  nombre             :string
#  descripcion        :text
#  emprendedor        :string
#  slug               :string
#  startup_weekend_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class IdeaPresentada < ActiveRecord::Base
  belongs_to :startup_weekend
  extend FriendlyId
  friendly_id :titulo, use: :slugged
  has_many :organizadores
  default_scope     ->{ order(:titulo) }
end
