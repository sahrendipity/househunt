## Flood Studies
# BCC has 27 sub models, referenced here: https://www.data.brisbane.qld.gov.au/data/dataset/flood-study-citywide-overland-flow-reference
# For my area of interest, we need: Enoggera, UpperKedron, InnerWest, Airport, Nundah, Central, CabbageTree
# Each sub model has 20 sub sub models for height (peak water levels), depth, and hazards.
# The BCC Flood models are raster images and prj files.

# Better place for flood studies - City Plan 2014. It'll be close.

data_path <- setwd('..')
flood_layer <- readOGR(file.path(data_path,"flood_plan/flood_plan.geojson"))
