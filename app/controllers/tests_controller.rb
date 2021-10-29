class TestsController < ApplicationController
  def index
  end

  def show
    @test = Test.find(params[:id])
    @tasks = @test.tasks
    @task = @tasks.select { |t| !t.answered? }.first

  end

  def create
    @test = Test.new(test_params)
    get_random_tasks

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
      sample = Task.all.sample(@test.number_of_tasks)
      sample.each do | task |
        task.update(test_id: @test)
      end
    end

    def save_random_tasks_ids
      @tasks = random_tasks.map{|x| x[:id]}
      Test.update(tasks: random_tasks)
    end
end
