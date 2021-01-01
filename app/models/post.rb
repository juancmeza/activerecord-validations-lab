class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} is not a valid category" }
    # validates :title_is_clickbaity

    # def title_is_clickbaity
    #     clickbaits = ["Won't Believe", "Secret", "Top ", "Guess"]
    #     count = 0
    #     clickbaits.each do |c|
    #         if title.include?(c)
    #             count += 1
    #         end
    #     end
    #     if count == 0
    #         errors.add(:title, "title is not clickbaity")
    #     end
    # end
end
