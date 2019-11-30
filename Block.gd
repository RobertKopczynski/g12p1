extends KinematicBody2D

export var score=10
var level=0
signal points(score,is_ball) #deklaracji sygnalu do przekazywania punktów
var power_up=null

#funkcja zwracająca wynik i niszcząca bloczek
func hit():
    emit_signal("points",_get_score(),true)
    if power_up != null:
        var c =power_up.instance()
        c.start(position)
        get_parent().add_child(c)
    queue_free()
    
func set_power(powerup):
    power_up=powerup
    
func set_level(current_level):
    level=current_level
    
func _get_score(): # wstępna deklaracja funkcji obliczającej ilość punktów
    return score*level
