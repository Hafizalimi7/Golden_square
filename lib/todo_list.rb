class TodoList
  def initialize
    @tasks = []
  end

  def add(todo) # todo is an instance of Todo
    #return nothing
    @tasks << todo
  end

  def incomplete
    # Returns all non-done todos
    @tasks.select { |task|
      if task.done?
        return @tasks
      end
    }
  end

  def complete
    # Returns all complete todos
    @tasks.select { |task|
      if task.done? == true
        return @tasks
      end
    }
  end

  def give_up!
    # Marks all todos as complete
    @tasks
  end
end