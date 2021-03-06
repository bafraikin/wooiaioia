# == Schema Information
#
# Table name: articles
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  body        :text
#  journal_id  :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :string
#

class Article < ApplicationRecord
  serialize :body
  belongs_to :journal
end
