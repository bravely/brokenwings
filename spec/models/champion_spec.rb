require 'spec_helper'

describe Champion do
  describe '#name' do
    it { should validate_presence_of(:name) }
    it { should have_db_column(:name).with_options(null: false) }
    it { should allow_value('Riven').for(:name) }
    it { should_not allow_value(nil).for(:name) }
  end

  Champion::INTEGER_COLUMNS.each do |column|
    describe "##{column}" do
      it { should have_db_column(column).of_type(:integer) }
      it { should allow_value(nil).for(column) }
      it { should allow_value('').for(column) }
      it { should allow_value(24).for(column) }
      it { should allow_value(117).for(column) }
      it { should_not allow_value('Darius').for(column) }
    end
  end

  Champion::BOOLEAN_COLUMNS.each do |column|
    describe "##{column}" do
      it { should have_db_column(column).of_type(:boolean) }
      it { should allow_value(nil).for(column) }
      it { should allow_value(true).for(column) }
      it { should allow_value('false').for(column) }
    end
  end
end
