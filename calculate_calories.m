function cal = calculate_calories(duration,met,weight)
    cal = duration./60.*met.*3.5.*weight;
end