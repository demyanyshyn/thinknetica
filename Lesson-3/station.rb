class Station

  def initialize (name)
   @name = name
   @train = []
  end

  def get_train (train)
    @train << train
  end

  def train_list
    @train.each { |train| train }
  end

  def give_train (train)
    @train.delete train
  end

  def train_list_by_type (type )
    @train.select { |list| @train.type == type }
  #  @train.each do |type| 
  #    if @train train.type == type { train }
  #  end
  end

  def name
    @name
  end
  
end
