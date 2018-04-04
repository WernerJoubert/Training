class TodoItem < ApplicationRecord
	validates :content, presence: true
  belongs_to :todo_list

  def completed?
		!completed_at.blank?
  end
end
