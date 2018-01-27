class HomeworkTwosController < ApplicationController
  before_action :set_homework_two, only: [:show, :edit, :update, :destroy]

  # GET /homework_twos
  # GET /homework_twos.json
  def index
    @homework_twos = HomeworkTwo.all
  end

  # GET /homework_twos/1
  # GET /homework_twos/1.json
  def show
  end

  # GET /homework_twos/new
  def new
    @homework_two = HomeworkTwo.new
  end

  # GET /homework_twos/1/edit
  def edit
  end

  # POST /homework_twos
  # POST /homework_twos.json
  def create
    @homework_two = HomeworkTwo.new(homework_two_params)

    respond_to do |format|
      if @homework_two.save
        format.html { redirect_to @homework_two, notice: 'Homework two was successfully created.' }
        format.json { render :show, status: :created, location: @homework_two }
      else
        format.html { render :new }
        format.json { render json: @homework_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homework_twos/1
  # PATCH/PUT /homework_twos/1.json
  def update
    respond_to do |format|
      if @homework_two.update(homework_two_params)
        format.html { redirect_to @homework_two, notice: 'Homework two was successfully updated.' }
        format.json { render :show, status: :ok, location: @homework_two }
      else
        format.html { render :edit }
        format.json { render json: @homework_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homework_twos/1
  # DELETE /homework_twos/1.json
  def destroy
    @homework_two.destroy
    respond_to do |format|
      format.html { redirect_to homework_twos_url, notice: 'Homework two was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homework_two
      @homework_two = HomeworkTwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homework_two_params
      params.require(:homework_two).permit(:name, :email)
    end
end
