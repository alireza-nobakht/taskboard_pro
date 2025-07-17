# frozen_string_literal: true

class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
  end

  def create
    @board = Board.new(board_params)

    if @board.save
      respond_to do |format|
        format.html { redirect_to boards_path, notice: "Board created!" }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def board_params
    params.require(:board).permit(:name)
  end
end
