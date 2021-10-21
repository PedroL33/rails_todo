class TodosController < ApplicationController
  before_action :authorized
  
  def index
    todos = Todo.where(user_id: @user.id)

    render json: TodoSerializer.new(todos).serialized_json
  end

  def create
    todo = Todo.new(create_params)

    if todo.save
      render json: TodoSerializer.new(todos).serialized_json
    else
      render json: { error: todo.errors.messages }, status: 422
  end

  def update
    if Todo.upsert_all(update_params, unique_by: :id)
      render json: { success: "Successfully updated." }, status: 200
    else
      render json: { error: "Something went wrong." }, status: 422
  end

  def destroy
    todo = Todo.find(params[:id])

    if todo.destroy
      head :no_content
    else
      render json: { error: todo.errors.messages }, status: 422
  end


  private

  def create_params
    params.require(:todo).permit(:title, :priority, :completed).merge(user_id: @user.id)
  end

  def update_params
    params.require(:todo).permit(:updates)
  end

end
