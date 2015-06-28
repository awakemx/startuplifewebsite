# == Schema Information
#
# Table name: organizadores
#
#  id                 :integer          not null, primary key
#  nombre             :string
#  imagen             :string
#  startup_weekend_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Organizador < ActiveRecord::Base
  belongs_to :startup_weekend
end
