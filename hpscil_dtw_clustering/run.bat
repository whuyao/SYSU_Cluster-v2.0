@echo off
%~d0
cd /d %~dp0
echo START PROGRAM...
::::Clustering.exe input_filename output_filename cluster_num max_iterations expectation_silhouette distance_type is_normalization(0=No/1=Yes) use_rand_init(0=No/1=Yes) max_DT_FT_gap_dist cluster_num_times AP_init_parts_num min_init_contribution
::distance type =
::		  -3 COS Distance (KMEDOIDS)
::        -2 Dynamic Time Wrapping Distance (KMEDOIDS)
::        -1 Normal Euclidean Distance
::        0 Chebyshev distance (L-inf norm)
::        1 city block distance (L1 norm)
::        2 Euclidean distance (L2 norm)
::        10 Pearson correlation: dist(a,b) = 1-corr(a,b)
::        11 Absolute Pearson correlation: dist(a,b) = 1-|corr(a,b)|
::        12 Uncentered Pearson correlation (cosine of the angle): dist(a,b) = a'*b/(|a|*|b|)
::        13 Absolute uncentered Pearson correlation: dist(a,b) = |a'*b|/(|a|*|b|)
::        20 Spearman rank correlation: dist(a,b) = 1-rankcorr(a,b)
::        21 Absolute Spearman rank correlation: dist(a,b) = 1-|rankcorr(a,b)|

::use_rand_init: 1=tranditional random / 0=AP clustering
::max_DT_FT_gap_dist: if the distance between farthest point and DTW center <= max_DT_FT_gap_dist, re-compute. recommendation = 0.1
::cluster_num_times: init starting cluster num = cluster_num*cluster_num_times. recommendation >= 2
::AP_init_parts_num: init num of starting to split the dataset to several parts. recommendation >= 10
::min_init_contribution: the minimum value of init all contribution. recommendation >= 0.5

::output means data file: output_filename + "_means.txt"
::output silhouette file: output_filename + "_silhouette.txt"

::Clustering.exe input_filename output_filename cluster_num max_iterations expectation_silhouette distance_type is_normalization(0=No/1=Yes(Total)/2=Yes(Inter-)) use_rand_init(0=No/1=Yes) max_DT_FT_gap_dist cluster_num_times AP_init_parts_num min_init_contribution

Clustering.exe ./data/eerduosi_all_buildings_min.csv ./result/eerduosi_all_buildings_min_class_2.csv 2 10 1.0 -2 2 0 0.1 5 20 0.5 20
REM Clustering.exe ./data/eerduosi_all_buildings.csv ./result/eerduosi_all_buildings_class_3.csv 3 10 1.0 -2 2 0 0.1 5 20 0.5 20
REM Clustering.exe ./data/eerduosi_all_buildings.csv ./result/eerduosi_all_buildings_class_4.csv 4 10 1.0 -2 2 0 0.1 5 20 0.5 20
REM Clustering.exe ./data/eerduosi_all_buildings.csv ./result/eerduosi_all_buildings_class_5.csv 5 10 1.0 -2 2 0 0.1 5 20 0.5 20
REM Clustering.exe ./data/eerduosi_all_buildings.csv ./result/eerduosi_all_buildings_class_6.csv 6 10 1.0 -2 2 0 0.1 5 20 0.5 20
REM Clustering.exe ./data/eerduosi_all_buildings.csv ./result/eerduosi_all_buildings_class_7.csv 7 10 1.0 -2 2 0 0.1 5 20 0.5 20
REM Clustering.exe ./data/eerduosi_all_buildings.csv ./result/eerduosi_all_buildings_class_8.csv 8 10 1.0 -2 2 0 0.1 5 20 0.5 20
REM Clustering.exe ./data/eerduosi_all_buildings.csv ./result/eerduosi_all_buildings_class_9.csv 9 10 1.0 -2 2 0 0.1 5 20 0.5 20
REM Clustering.exe ./data/eerduosi_all_buildings.csv ./result/eerduosi_all_buildings_class_10.csv 10 10 1.0 -2 2 0 0.1 5 20 0.5 20




echo EXIT PROGRAM.
pause > nul