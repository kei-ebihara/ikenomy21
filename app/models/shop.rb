class Shop < ApplicationRecord
  has_one_attached :image
  attribute :new_image

  validates :name, presence: true, length: { maximum: 50 }
  validates :tel, length: { maximum: 15 }
  validates :address, length: { maximum: 100 }
  validates :homepage, length: { maximum: 1000 }
  validates :opentime, length: { maximum: 20 }
  validates :closetime, length: { maximum: 20 }
  validates :holiday, length: { maximum: 30 }
  validates :description, presence: true, length: { maximum: 1000 }
  
  before_save do
    self.image = new_image if new_image
  end
end
