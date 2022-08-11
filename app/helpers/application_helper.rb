module ApplicationHelper
  def money(number)
    return if number.blank?
    
    number_to_currency(number, unit: "R$", separator: ",", delimiter: ".")
  end
end
