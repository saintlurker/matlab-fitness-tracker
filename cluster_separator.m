function positions = cluster_separator(cls)
    id = 0;
    records = [];
    for i=1:length(cls)
        if cls(i)~=id
            id = cls(i);
            records = [records,i];
        end
    end
    positions = records;
end