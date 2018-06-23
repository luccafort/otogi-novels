# == Schema Information
#
# Table name: books
#
#  id          :bigint(8)        unsigned, not null, primary key
#  title       :string(255)
#  status      :integer
#  summary     :text(65535)
#  description :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Book < ApplicationRecord
  has_many :story
  belongs_to :author, dependent: :destroy

  DRAFT = 100.freeze
  PUBLISH = 200.freeze
  COMPLETED = 300.freeze
  PAUSED = 400.freeze

  # 下書き、公開、完結済み、中止のステータスコード
  enum status: { draft: DRAFT, publish: PUBLISH, completed: COMPLETED, paused: PAUSED }

  validates :title, presence: true
  validates :title, allow_nil: true, length: {in: 1..255}
  validates :status, allow_nil: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :summary, presence: true
  validates :summary, allow_nil: true, length: {in: 1..65535}
  validates :description, presence: true
  validates :description, allow_nil: true, length: {in: 1..65535}
end
