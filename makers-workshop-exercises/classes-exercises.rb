class Introducer

  def initialize(name)
    @name = name
  end

  def announce
    "I am #{@name}!"
  end

  def introduce(other)
    "Hello #{other}, #{announce}"
  end

end

introducer = Introducer.new("Kay")

puts introducer.announce()
# Should print: "I am Kay!"

puts introducer.introduce("Fred")
# Should print: "Hello Fred, I am Kay!"

class Reminder

  def initialize(name)
    @name = name
  end

  def remind_me_to(to_do)
    @to_do = to_do
  end

  def remind
    "#{@to_do} #{@name}!"
  end

end

reminder = Reminder.new("Kay")

reminder.remind_me_to("Walk the dog")

puts reminder.remind()
# Should print: "Walk the dog Kay!"