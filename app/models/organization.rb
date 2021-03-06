class Organization < ActiveRecord::Base

  validates :name, presence: true
  validates :blurb, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :address, presence: true
  validates :zip, presence: true
  validates :website_url, presence: true

  validates :email, uniqueness: true

  before_save :standardise_number

  def standardise_number
    if self.phone != nil
      self.phone.gsub!(/\D/, "")
      self.phone.gsub!(/(\d{3})(\d{3})(\d{4})/, '\1-\2-\3')
    end
  end

end
