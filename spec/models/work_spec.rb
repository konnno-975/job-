require 'rails_helper'

RSpec.describe Work, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  describe "Work バリデーションチェック" do
    before do
      @work = Work.new(id:1, user_id: 1, start_time: "2021-02-17 09:21:00", end_time: "2021-02-17 09:21:00", money: 1, people: 1, created_at: "2021-02-17 09:21:00", updated_at: "2021-02-17 09:21:00")
    end


    it "true" do
      expect(@work.save).to eq true
    end


    it "user_id false" do
      @work.user_id = nil
      expect(@work.save).to eq false
    end


    it "start_time false" do
      @work.start_time = nil
      expect(@work.save).to eq false
    end


    it "end_time true" do
      @work.end_time = nil
      expect(@work.save).to eq false
    end


    it "money false" do
      @work.money = nil
      expect(@work.save).to eq false
    end


    it "people false" do
      @work.people = nil
      expect(@work.save).to eq false
    end
  end
end
