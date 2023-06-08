%test file for quick demonstration. Same code is included in livescript
weight = 55
data = load("sensorlog_20230608_115207.mat");
time = data.Position.Timestamp;
speed = data.Position.speed;
cls = METclusterer(time,speed);
positions = cluster_separator(cls);
[met_classifications, met_descriptions] = MET_identifier(speed,positions);
[durations,dtt] = duration_calculator(time,positions);
calories = calculate_calories(durations,met_classifications,weight);
fitness_report(dtt,durations,met_descriptions,calories)

