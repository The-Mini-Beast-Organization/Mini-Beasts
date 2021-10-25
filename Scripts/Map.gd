extends Node2D

class_name Map

var tileGrid = []

# for testing, sets up a blank 10x10 grid
# remove later, map shouldn't set itself up
func _ready():
	SetBlankTileGrid(10, 10)

func SetBlankTileGrid(width : int, height : int):
	var tile : Tile = preload("res://Scripts/Tile.gd").instance()
	for x in range(width):
		tileGrid[x] = []
		for y in range(height):
			tileGrid[x][y] = tile
			add_child(tile)

func GetTile(location : Vector2):
	return tileGrid[location.x][location.y]
