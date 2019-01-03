# == Schema Information
#
# Table name: names
#
#  id         :bigint(8)        not null, primary key
#  last_name  :string
#  name       :string
#  sexo       :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Name < ApplicationRecord
end
