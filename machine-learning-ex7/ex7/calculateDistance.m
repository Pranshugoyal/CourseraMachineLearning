function u = calculateDistance(x, centroid)

  diff = x - centroid;
  u = diff * diff';

end