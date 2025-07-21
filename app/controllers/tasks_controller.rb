class TasksController < ApplicationController
  before_action :set_board

  def index
    @tasks = @board.tasks
  end

  def new
    @task = @board.tasks.new
  end

  def create
    @task = @board.tasks.new(task_params)
    if @task.save
      redirect_to board_tasks_path(@board), notice: "Task created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_board
    @board = Board.find(params[:board_id])
  end

  def task_params
    params.require(:task).permit(:title, :completed)
  end
end