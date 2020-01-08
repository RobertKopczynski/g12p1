extends Node2D
#warning-ignore-all:unused_variable
#warning-ignore-all:return_value_discarded
func _ready():
    $Menu/CenterRow/Buttons/PlayButton.grab_focus()
    $Menu/CenterRow/Buttons/PlayButton.start("Play","res://Level1.tscn")
    $Menu/CenterRow/Buttons/Exit.start("Exit","Exit")
    $Menu/CenterRow/Buttons/LevelSelect.start("Level Select","")
    $Menu/CenterRow/Buttons/HighscoreButton.start("Highscores","res://HighScores.tscn")


func _on_Exit_pressed():
    get_tree().quit()


func _on_PlayButton_pressed():
    Global.score=0
    Global.life=3
    get_tree().change_scene("res://Scene1.tscn")


func _on_HighscoreButton_pressed():
    get_tree().change_scene("res://HighScores.tscn")


func _on_LevelSelect_pressed():
    get_tree().change_scene("res://LevelSelectMenu.tscn")
