class Income < ApplicationRecord
  belongs_to :income_item

  def self.search(start_date, end_date)
    if end_date.empty?
      where('date >= ?', start_date)
    elsif start_date.empty?
      where('date <= ?', end_date)
    elsif start_date && end_date
      where(date: start_date..end_date)
    end
  end
  
  scope :this_month, -> {
    where(date: Time.now.all_month).order(date: "DESC")
  }
end
