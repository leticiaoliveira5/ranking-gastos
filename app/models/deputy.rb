class Deputy < ApplicationRecord
  has_many :expenditures,
           primary_key: :registration_id,
           foreign_key: :deputy_registration_id,
           class_name: 'Expenditure'
  validates :registration_id, presence: true

  def amount_spent
    expenditures.collect(&:net_amount).sum
  end

  def biggest_expenditure
    expenditures.collect(&:net_amount).max
  end

  def picture_url
    "http://www.camara.leg.br/internet/deputado/bandep/#{registration_id}.jpg"
  end
end
