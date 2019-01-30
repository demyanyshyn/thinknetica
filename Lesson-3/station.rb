class Station
  attr_reader :train_list, :name

  def initialize(name)
    @name = name
    @train_list = []
  end

  def get_train(train)
    @train_list << train
  end

  def give_train(train)
    @train_list.delete(train)
  end

  def train_list_by_type(type)
    @train_list.select {|list| list.type == type }
  end
end
