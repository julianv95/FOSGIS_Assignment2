ogr2ogr -s_srs EPSG:4326 -t_srs EPSG:32632 gadm36_DEU_2_UTM.shp gadm36_DEU_2.shp
ogr2ogr -t_srs EPSG:32632 motorway_UTM.geojson motorway.geojson
ogr2ogr -t_srs EPSG:32632 forest_UTM.geojson forest.geojson


ogr2ogr -f GeoJSON -t_srs EPSG:32632 gadm36_DEU_2_UTM.geojson gadm36_DEU_2_UTM.shp
ogr2ogr -where "NAME_2 in ('Bergstraße','Heidelberg','Mannheim','Rhein-Neckar-Kreis')" districts.geojson gadm36_DEU_2_UTM.geojson
