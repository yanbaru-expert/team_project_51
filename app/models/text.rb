class Text < ApplicationRecord
  has_many :read_progresses, dependent: :destroy
  with_options presence: true do
    validates :genre
    validates :title
    validates :content
  end

  def readed_by?(_user)
    read_progresses.exists?(user_id: user_id)
  end

  enum genre: {
    invisible: 0,
    basic: 1,
    git: 2,
    ruby: 3,
    rails: 4,
    php: 5
  }

  RAILS_GENRE_LIST = %w[basic git ruby rails].freeze
end
