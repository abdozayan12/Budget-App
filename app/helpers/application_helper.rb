module ApplicationHelper
  def format_large_number(number)
    if number.abs >= 1_000_000
      "#{number / 1_000_000}M"
    elsif number.abs >= 1_000
      "#{number / 1_000}K"
    else
      number.to_s
    end
  end
end
