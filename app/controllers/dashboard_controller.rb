class DashboardController < ApplicationController
  def index
  	@todo_list = current_user.todo_lists.where(title: "dashboard todo").first_or_create
  	@todo_items = @todo_list.todo_items.all
  end
end
