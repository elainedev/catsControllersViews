# == Schema Information
#
# Table name: cats
#
#  id          :integer          not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Cat < ActiveRecord::Base
  SEXES = ['M', 'F']
  COLORS = %w(white orange black mixed gray tawny spotted)

  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :sex, inclusion: { in: SEXES }
  validates :color, inclusion: { in: COLORS } # ? may need to store array in var for DRY



end
