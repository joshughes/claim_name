require 'spec_helper'

describe BabyName do
  it 'finds similar names' do
    FactoryGirl.create(:baby_name)
    FactoryGirl.create(:baby_name)
    name = FactoryGirl.create(:baby_name)

    names = BabyName.all

    expect(name.similar_names.length).to equal(2)
    expect(name.similar_names).to_not include(name.name)
  end
end
