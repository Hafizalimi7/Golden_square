class TodoList
  def initialize
    @task = []
  end

  def add(task)
    return @task << task
  end

  def  completed(task)
    fail "Task Not Available In The List" unless @task.include? task
    @task.delete(task)
  end

  def list
    return @task
  end
end