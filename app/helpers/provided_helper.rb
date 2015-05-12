module ProvidedHelper
  def cuisine_ids_today(week, is_evening)
    Provided.where(week: week, is_evening: is_evening)
  end
end
