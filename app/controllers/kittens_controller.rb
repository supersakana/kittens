class KittensController < ApplicationController
  before_action :set_car, only: %i[show edit update destroy]

  def index
    @kittens = Kitten.all
  end

  def show; end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
        format.html { redirect_to kitten_url(@kitten), notice: "Kitten was successfully created." }
        format.json { render :show, status: :created, location: @kitten }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kitten.errors, status: :unprocessable_entity }
      end
  end

  def edit; end

  def update; end

  def destroy; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_kitten
    @kitten = Kitten.find(params[:id])
  end

  def kitten_params

  end
end
