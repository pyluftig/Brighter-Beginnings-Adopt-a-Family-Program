class Family < ActiveRecord::Base
  belongs_to :drive
  belongs_to :donor
  belongs_to :user
  has_one :adoption
  
  has_many :family_members, :dependent => :destroy, :inverse_of => :family
  
  accepts_nested_attributes_for :family_members, :allow_destroy => true

  validates :code, presence: true, uniqueness: {case_sensitive: false}

  before_create :strip_family_code

  def strip_family_code
    self.code.strip!
  end

  def self.get_total_adoptions
    total_fams = Family.count
    adopted_families = []
    Family.all.each { |fam| adopted_families << fam if fam.adopted == true }
    @left_unadopted = total_fams - adopted_families.count
  end

  def get_adoptor_phone_number(user_id)
    user = User.find(user_id)
    user.phone
  end

  def self.filter_families(user)
    if user.drop_location_id == 0
      families = Family.where(is_live: true)
      families.select {|f| f if f.adopted == false}
    else
      families = Family.where(drop_location_id: user.drop_location_id, is_live: true)
      families.select {|f| f if f.adopted == false}
    end
  end

  def self.get_fams_eight(families)
    families.select {|f| f if f.family_members.count >= 8 }
  end

  def self.get_fams_seven(families)
    families.select {|f| f if f.family_members.length == 7 }
  end

  def self.get_fams_six(families)
    families.select {|f| f if f.family_members.length == 6 }
  end

  def self.get_fams_five(families)
    families.select {|f| f if f.family_members.length == 5 }
  end

  def self.get_fams_four(families)
    families.select {|f| f if f.family_members.length == 4 }
  end

  def self.get_fams_three(families)
    families.select {|f| f if f.family_members.length == 3 }
  end

  def self.get_fams_two(families)
    families.select {|f| f if f.family_members.length <= 2 }
  end

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |family|
        csv << family.attributes.values_at(*column_names)
      end
    end
  end
end

