class Income < ApplicationRecord
  belongs_to :income_item

  def self.search(start_date, end_date)
    if start_date && end_date
      where(date: start_date..end_date)
    elsif start_date
      where(date >= start_date)
    elsif end_date
      where(date <= end_date)
    else #検索がなければ、当月の収入一覧を表示させる
      this_month
    end
  end
  
  scope :this_month, -> {
    where(date: Time.now.all_month).order(date: "DESC")
  }
end
