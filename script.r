library(maps)

# Initialize variables
mapColor = "#666666"
mapBackgroundColor = "#000000"
pointColor = "#FD625E"
pointCex = 0.2

if (exists("settings_map_params_mapColor")) {
  mapColor = settings_map_params_mapColor
}

if (exists("settings_map_params_mapBackgroundColor")) {
  mapBackgroundColor = settings_map_params_mapBackgroundColor
}

if (exists("settings_map_params_pointColor")) {
  pointColor = settings_map_params_pointColor
}

if (exists("settings_map_params_pointCex")) {
  pointCex = settings_map_params_pointCex
}

# Main program
map(interior = FALSE, col = mapColor, bg = mapBackgroundColor)
dataset = cbind(lng, lat)
points(dataset[, 1], dataset[, 2], col = pointColor, cex = pointCex)