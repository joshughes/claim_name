class BabyName < ActiveRecord::Base
  has_and_belongs_to_many :users

  fuzzily_searchable :name

  before_save do
    self.name = self.name.downcase
  end

  def similar_names
    names = BabyName.find_by_fuzzy_name(name).map(&:name)
    names.delete(name)
    names
  end

end
