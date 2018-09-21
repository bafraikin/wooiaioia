class Article < ApplicationRecord
  serialize :body
  belongs_to :journal
end
