class Integer < Numeric
  def to_hours
    days, hrs = self.divmod(24)
    if hrs != 0
      return "Same-Day"
    else
      if days > 1
        return "#{days} days"
      else
        return "#{days} day"
      end
    end
  end
end