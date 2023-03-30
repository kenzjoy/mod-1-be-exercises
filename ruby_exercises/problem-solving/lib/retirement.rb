class Retirement
  def calculate(age_1, age_2)
    if age_1.negative? || age_2.negative?
      "Error. Age cannot be negative."
    else
      "You have #{age_2 - age_1} years left until you can retire. It is 2015, so you can retire in #{2015 + (age_2 - age_1)}."
    end
  end
end