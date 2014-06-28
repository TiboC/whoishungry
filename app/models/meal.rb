class Meal < ActiveRecord::Base

  belongs_to :cooker, class_name: "User", foreign_key: :cooker_id

  has_attached_file :photo, :styles => { :normal => "268x268>", thumb: "20x20>"}
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  def available_slices
    #TODO
    return self.person_max
  end

  def available_slices_tooltip
    #TODO
    return "Encore #{self.available_slices} places disponibles"
  end

end
