function dist = calculate_distance(long,lat,earth)
    for i = 1:(length(lat)-1)
        coord_dist(i) = [distance(lat(i),long(i),lat(i+1),long(i+1))]
    end
    dist = coord_dist.*earth./360
end

