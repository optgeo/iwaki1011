get:
	curl -O https://assets.cms.plateau.reearth.io/assets/7b/a7ca3b-8d36-4449-9025-bc8427f7066e/07204_iwaki-shi_2020_3dtiles-mvt_4_op.zip
	unzip 07204_iwaki-shi_2020_3dtiles-mvt_4_op.zip
upgrade:
	npx 3d-tiles-tools upgrade --force --targetVersion 1.1 \
	-i bldg_lod2 -o bldg_lod2m
	ruby dm2glb.rb | sh 
