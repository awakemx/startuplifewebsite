# == Schema Information
#
# Table name: registros
#
#  id               :integer          not null, primary key
#  nombre           :string
#  telefono         :string
#  email            :string
#  nombre_comunidad :string
#  comentario       :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Registro < ActiveRecord::Base
  validates :email, :nombre, :nombre_comunidad, presence: true
end
