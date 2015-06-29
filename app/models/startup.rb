# == Schema Information
#
# Table name: startups
#
#  id                 :integer          not null, primary key
#  user_id            :integer
#  nombre             :string
#  logo               :string
#  descripcion        :text
#  pagina             :string
#  slug               :string
#  startup_weekend_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Startup < ActiveRecord::Base
  belongs_to :user
  belongs_to :startup_weekend
  extend FriendlyId
  friendly_id :nombre, use: :slugged
  default_scope     ->{ order(:nombre) }
  validates :nombre, :descripcion, presence: true
end
