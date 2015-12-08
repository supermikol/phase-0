class ToDo
  def initialize(date,tasks)
    @date = date
    raise ArgumentError, "Second item should be array" unless tasks.is_a?(Array)
    @tasks = tasks
  end
  def show
    @tasks.each_with_index{|x,i| puts "#{i + 1}. #{x}"}
  end
end

fresh_todo = ToDo.new("12/6",["Eat","Sleep","Shower"])
fresh_todo.show

# 1. Eat
# 2. Sleep
# 3. Shower