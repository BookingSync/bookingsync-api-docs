class Scope
  attr_reader :name, :path

  def initialize(scope)
    @tag = SecureRandom.hex(6)
    if scope.is_a?(Hash)
      @name, @path = scope.flatten
    else
      @name = scope; @path = scope
    end
  end

  def display_name
    name.to_s.gsub('-', ' / ')
  end

  def href
    "#{@tag}#{name}"
  end
end
