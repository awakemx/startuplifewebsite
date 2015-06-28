class StartupWeekend < ActiveRecord::Base
  extend FriendlyId
  friendly_id :titulo, use: :slugged
  default_scope ->{ order(:titulo) }
end
