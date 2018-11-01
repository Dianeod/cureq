np:.p.import`numpy
shape:{-1_count each first scan x};
readsam:.p.import[`pyclustering.utils]`:read_sample;
SIMPLE_SAMPLES:.p.import[`pyclustering.samples.definitions]`:SIMPLE_SAMPLES;
FCPS_SAMPLES:.p.import[`pyclustering.samples.definitions]`:FCPS_SAMPLES;
addPts:{[p1;p2]
        $[(shape sample 0)~shape p1;
          $[(shape sample 0)~shape p2;flip p1,'p2;enlist[p1],p2];
          $[(shape sample 0)~shape p2;p1,enlist p2;p1,p2]]}
euclSqDist:{sqrt(sum xexp[(x-y);2])};
plt3D:.p.import[`mpl_toolkits.mplot3d]`:Axes3D;

plt:.p.import[`matplotlib]`:pyplot;





