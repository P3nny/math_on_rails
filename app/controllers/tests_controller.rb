class TestsController < ApplicationController
  def index
    
  end

  def show
    @test = Test.find(params[:id])
    @tasks = get_random_tasks
  end

  def create
    @test = Test.new(test_params)

    if @test.save
      redirect_to @test
    else
      render :new
    end
  end

  private
    def test_params
      params.permit(:name, :number_of_tasks)
    end

    def get_random_tasks
      random_tasks = Task.all.sample(@test.number_of_tasks)
    end
end
