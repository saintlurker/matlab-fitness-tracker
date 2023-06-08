function [ident,desc] = MET_identifier(speed,positions)
    %function that identifies the MET score of an excercise based on the mean Speed recorded during said excercise.
    %Also returns a short string explanation the user's better understanding
    means = [];
    mets = [1;2;3;4;5;8;10;13;15];
    descriptions = ["standing";"slow walk";"average walk";"brisk walk";"very brisk walk";"jog";"run";"fast run";"very fast run"];
    thresholds = [0.0;0.44;0.89;1.58;2.06;2.24;2.68;3.58;4.47];
    for i =1:length(positions)
        if i ~= length(positions)
            group = speed(positions(i):positions(i+1)-1);
        else
            group = speed(positions(i):end);
        end
        means = [means;mean(group)];
        d = []
    end
    for i=1:length(means)
        for j=1:length(thresholds)
            if means(i) < thresholds(j)
                means(i)=mets(j-1);
                d = [d; descriptions(j-1)]
                break
            end
        end
    end
    ident = means;
    desc = d;
end
