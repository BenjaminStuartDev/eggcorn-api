class TestUsersController < ApplicationController
  before_action :set_test_user, only: %i[ show update destroy ]

  # GET /test_users
  def index
    @test_users = TestUser.all

    render json: @test_users
  end

  # GET /test_users/1
  def show
    render json: @test_user
  end

  # POST /test_users
  def create
    @test_user = TestUser.new(test_user_params)

    if @test_user.save
      render json: @test_user, status: :created, location: @test_user
    else
      render json: @test_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /test_users/1
  def update
    if @test_user.update(test_user_params)
      render json: @test_user
    else
      render json: @test_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /test_users/1
  def destroy
    @test_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_user
      @test_user = TestUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def test_user_params
      params.require(:test_user).permit(:name, :description)
    end
end
