class Movie < ApplicationRecord

  has_many :watch_progresses

  with_options presence: true do
    validates :genre
    validates :title
    validates :url
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

  def watch_progressed_by?(user)
    watch_progresses.exists?(user_id: user.id)
  end
end
