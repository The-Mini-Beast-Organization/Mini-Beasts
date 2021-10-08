extends Node2D

class_name Action

var actionName : String
var description : String

var initialCost : int
var additionalTargetCost : int

var maxTargets : int
var possibleTargets : Array
var targetableTile : Array
var affectedTiles : Array
var selectedTargets : Array


func SelectTargets():
	pass

func PerformAction():
	pass

# Lowers the effort of a mini beast according to this move's cost
func ChargeEffort(mb : MiniBeast):
	mb.changeEffort(initialCost * -1)

func OnDeselect():
	pass
