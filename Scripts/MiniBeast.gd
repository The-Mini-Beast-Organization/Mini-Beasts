extends Position2D

var mbName : String
var team : int
var mobilityStat : int
var attackStat : int
var healthStat : int
var effortStat : int

var mapPosition : Vector2

var currentHealth : int
var currentEffort : int

onready var actionList = $Actions


func _ready():
	pass

# Changes this mini beast's health by the given amount
func changeHealth(difference : int):
	currentHealth += difference
	if currentHealth < 0:
		currentHealth = 0
	elif currentHealth > healthStat:
		currentHealth = healthStat

# Changes this mini beast's effort by the given amount
func changeEffort(difference : int):
	currentEffort +=  difference
	if currentEffort < 0:
		currentEffort = 0

# Moves this mini beast to the given position
func move(newPosition : Vector2):
	mapPosition = newPosition

# Runs all required methods for when this mini beast ends its turn
func onEndTurn():
	pass
