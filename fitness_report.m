function fitness_report(dtt,durations,met_descriptions,calories)
    rep = table(dtt, durations,met_descriptions,calories)
    fprintf("Total: "+string(sum(calories))+" food cal")