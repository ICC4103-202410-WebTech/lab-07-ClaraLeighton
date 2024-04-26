class Post < ApplicationRecord
    belongs_to :user

    has_many :post_tags
    has_many :tags, :through => :post_tags

    validates :title, :content, :user_id, presence: { message: "is missing! Please fill it in" }
    validates :answers_count, :likes_count, numericality: { greater_than_or_equal_to: 0, message: "must be greater than or equal to 0" }
    before_save :set_default_published_at
    private 
    def set_default_published_at
      self.published_at ||= Time.current
    end

end