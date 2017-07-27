class Link < ActiveRecord::Base
  validates :url, presence: true

  def self.hot_reads
    where(updated_at: 24.hours.ago..Time.now).order(count: :desc)
  end


end
