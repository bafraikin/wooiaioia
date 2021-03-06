# == Schema Information
#
# Table name: journals
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  nb_articles :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Journal < ApplicationRecord
  has_many :articles, dependent: :destroy
end
