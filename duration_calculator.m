function [dur,ref] = duration_calculator(time,positions)
    durations = [];
    dtt = [];
    for i =1:length(positions)
        if i ~= length(positions)
            group = time(positions(i):positions(i+1)-1);
        else
            group = time(positions(i):end);
        end
        te = timeElapsed(group);
        durations = [durations;te(length(te))];
        dtt = [dtt;group(1)];
    end
    dur = durations;
    ref = dtt;
end