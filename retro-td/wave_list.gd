extends Node2D

@export var virusProtoype: PackedScene
@export var SpamEmail: PackedScene
@export var Poppup: PackedScene
@export var MyDoom: PackedScene
@export var pathAssign: PathFollow2D

var waveNum=1

var beforestart=[0]

var wave1Array=[1,1,1,1,1,1,1,2,0]
var wave2Array=[1,1,1,1,1,2,2,0]
var wave3Array=[1,2,1,1,2,3,2,1,0]
var wave4Array=[1,0]
var wave5Array=[7,4,5,6,2,4,4,0]
var wave6Array=[1,4,0]
var wave7Array=[7,7,7,3,0]
var wave8Array=[]
var wave9Array=[]
var wave10Array=[]
var wave11Array=[]
var wave12Array=[]
var wave13Array=[]
var wave14Array=[]
var wave15Array=[]
var wave16Array=[]
var wave17Array=[]
var wave18Array=[]
var wave19Array=[]
var wave20Array=[]
var wave21Array=[]
var wave22Array=[]
var wave23Array=[]
var wave24Array=[]
var wave25Array=[]
var wave26Array=[]
var wave27Array=[]
var wave28Array=[]
var wave29Array=[]
var wave30Array=[]
var wave31Array=[]
var wave32Array=[]
var wave33Array=[]
var wave34Array=[]
var wave35Array=[]
var wave36Array=[]
var wave37Array=[]
var wave38Array=[]
var wave39Array=[]
var wave40Array=[]
var wave41Array=[]
var wave42Array=[]
var wave43Array=[]
var wave44Array=[]
var wave45Array=[]
var wave46Array=[]
var wave47Array=[]
var wave48Array=[]
var wave49Array=[]
var wave50Array=[]
var wave51Array=[]
var wave52Array=[]
var wave53Array=[]
var wave54Array=[]
var wave55Array=[]
var wave56Array=[]
var wave57Array=[]
var wave58Array=[]
var wave59Array=[]
var wave60Array=[]


var waves=[beforestart,wave1Array,wave2Array,wave3Array,wave4Array,wave5Array,wave6Array,wave7Array,0]
var WhichWave=waves.pop_front()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_spawn_timer_timeout():
	#if wave not finished or boss wave
	if WhichWave!=beforestart or wave20Array or wave40Array or wave60Array:
		var nextEnemy=WhichWave.pop_front()
		if nextEnemy!=0:
			var virus = virusProtoype.instantiate()
			virus.colorType=nextEnemy
			virus.path=pathAssign
			# add the new virus to the scene tree (e.g., Firewall node)
			add_child(virus)
			# show the new virus
			virus.show()
	elif WhichWave==wave20Array:
		var spamGo=SpamEmail.instantiate()
	elif WhichWave==wave40Array:
		pass
	elif WhichWave==wave60Array:
		pass
	#else:
	#	WhichWave=waves.pop_front()


func _on_next_wave_pressed() -> void:
	
	WhichWave=waves.pop_front()
	
