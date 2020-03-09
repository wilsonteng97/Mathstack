extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	#Set Highscore
	$PlayBoard/HighscoreRow/Score.set_text(str(global.highscore))
	#Set Time
	$PlayBoard/TimeElapsedRow/Time.set_text(str(global.time))
	#Set Block No
	$BlockTower/Block/Label.set_text(str(global.highscore))
	#Hide health and power button
	$SelectedCharacter/healthBar.hide()
	$SelectedCharacter/PowerButton.hide()
	#Set World
	$PlayBoard/WorldVisitedRow/Worlds.set_text(global.worldSelected)
	#Set Average question per time
	var avg = stepify(global.highscore/global.timeSeconds,0.01)
	print(avg)
	$PlayBoard/AverageSpeedRow/SpeedPerQn.set_text(str(avg)+" qn/s")
