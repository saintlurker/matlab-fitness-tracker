function retval = METclusterer(time, speed)
    %convert the datetime to epoch
    epoch = datetime_to_epoch(time);
    %cast epoch as single for normalization to follow
    epoch = cast(epoch,"single");
    %normalize epoch seconds to scale comparably to speed
    epoch = normalize(epoch);
    mtx = [epoch,speed];
    %we are going to cluster our datapoints using k-means, so an
    %appropriate k must be determined.
    %determine the appropriate k by evaluating based on silhouette score
    eval = evalclusters(mtx,"kmeans","silhouette","KList",1:6);
    k = eval.OptimalK;
    %run a kmeans clusterer to define different "workout groups"
    retval = kmeans(mtx,k);
end
