class Name
  attr_accessor :full_name

  def initialize(full_name)
    @full_name = full_name
    separate
  end

  def first
    @first || "No first Name"
  end

  def last
    @last || "No last name"
  end

  def is_long?
    full_name.length > 10
  end

  def has_middle?
    true
  end

private def separate
    first_last = @full_name.split(" ")
    @first = first_last.first
    @last = first_last.last
  end
end