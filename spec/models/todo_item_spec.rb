require 'rails_helper'

RSpec.describe TodoItem do
	let(:todo_list) {TodoList.new}
	let(:todo_item) {TodoItem.new}

	it "is valid with content" do
		todo_item = todo_list.todo_items.new(content: "Hi")
		expect(todo_item).to be_valid
	end

	it "is not valid without content" do
		todo_item = todo_list.todo_items.new
		expect(todo_item).not_to be_valid
	end

	it "is not valid with title longer than 100 symbols" do
		todo_item = TodoItem.new(content: "a" * 101)
		expect(todo_item).not_to be_valid
	end

end