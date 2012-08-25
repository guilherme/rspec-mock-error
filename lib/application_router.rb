class ApplicationRouter

  def initialize(allow)
    @allow = allow
  end

  def matches?
    @allow
  end

end
