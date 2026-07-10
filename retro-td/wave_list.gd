extends Node2D

@export var virusProtoype: PackedScene
@export var SpamEmail: PackedScene
@export var Poppup: PackedScene
@export var MyDoom: PackedScene
@export var pathAssign: PathFollow2D

var waveNum=0
var waveFinished=true

var beforestart=[0]
var wave1Array=[1,1,1,1,1,1,1,2,0]
var wave2Array=[1,1,1,1,1,2,2,0]
var wave3Array=[1,2,1,1,2,3,2,1,0]
var wave4Array=[3,3,3,3,3,3,0]
var wave5Array=[1,1,1,1,2,2,2,4,4,3,3,0]
var wave6Array=[1,1,1,1,1,1,6,0]
var wave7Array=[2,2,2,2,2,2,2,2,2,2,2,2,0]
var wave8Array=[1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,0]
var wave9Array=[2,2,2,3,3,3,4,4,2,0]
var wave10Array=[3,3,3,3,4,0]
var wave11Array=[4,4,4,0]
var wave12Array=[1,1,1,1,1,1,4,4,4,0]
var wave13Array=[2,1,2,1,2,1,2,1,2,0]
var wave14Array=[3,3,4,4,4,4,4,0]
var wave15Array=[1,1,1,1,1,1,1,2,2,2,3,3,4,0]
var wave16Array=[4,4,4,4,4,0]
var wave17Array=[5,1,1,1,1,1,1,1,0]
var wave18Array=[1,1,1,1,1,5,4,4,0]
var wave19Array=[5,5,5,5,5,5,0]
var wave20Array=[0]
var wave21Array=[1,1,1,1,1,1,2,2,2,2,5,0]
var wave22Array=[1,2,1,2,1,2,3,3,3,3,3,4,0]
var wave23Array=[5,5,5,0]
var wave24Array=[3,3,3,3,3,3,3,3,0]
var wave25Array=[4,4,4,4,1,1,1,3,3,3,3,2,0]
var wave26Array=[3,3,3,1,1,1,1,2,2,2,2,2,2,2,2,0]
var wave27Array=[1,1,1,1,1,5,5,5,5,3,4,0]
var wave28Array=[2,2,2,2,2,3,3,3,4,4,4,5,5,0]
var wave29Array=[1,1,1,1,1,6,6,6,0]
var wave30Array=[2,2,2,2,3,3,3,6,0]
var wave31Array=[1,2,1,2,1,2,1,3,3,3,4,0]
var wave32Array=[3,3,4,4,4,5,5,6,0]
var wave33Array=[6,6,6,2,2,2,0]
var wave34Array=[2,2,2,4,4,4,3,0]
var wave35Array=[7,1,1,1,1,0]
var wave36Array=[5,5,5,5,0]
var wave37Array=[1,2,2,2,6,6,5,5,5,5,0]
var wave38Array=[1,1,1,1,2,2,2,2,3,3,3,3,0]
var wave39Array=[4,4,4,4,4,3,3,3,0]
var wave40Array=[0]
var wave41Array=[1,4,4,4,5,6,6,2,0]
var wave42Array=[2,2,2,2,2,2,2,2,2,2,0]
var wave43Array=[6,6,6,6,2,2,2,0]
var wave44Array=[7,7,7,3,3,3,0]
var wave45Array=[7,6,6,6,4,4,4,1,0]
var wave46Array=[6,6,6,6,6,6,1,1,1,7,0]
var wave47Array=[7,7,7,7,7,0]
var wave48Array=[6,3,6,3,6,3,6,3,6,7,0]
var wave49Array=[5,5,5,5,5,7,0]
var wave50Array=[7,7,7,7,1,1,1,1,1,1,1,1,1,1,0]
var wave51Array=[1,2,2,3,3,3,4,4,4,4,5,5,5,5,5,0]
var wave52Array=[6,6,6,6,6,6,0]
var wave53Array=[1,1,1,1,1,1,1,2,2,2,2,2,2,2,3,3,3,3,7,0]
var wave54Array=[7,7,7,7,7,0]
var wave55Array=[7,7,7,3,3,3,3,3,3,3,3,3,3,3,0]
var wave56Array=[1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,0]
var wave57Array=[4,4,4,4,4,4,4,4,4,4,7,4,4,7,7,4,7,0]
var wave58Array=[7,7,7,7,7,7,7,0]
var wave59Array=[6,6,6,6,6,6,7,7,7,7,7,7,7,0]
var wave60Array=[0]


var waves=[beforestart,wave1Array,wave2Array,wave3Array,wave4Array,wave5Array,wave6Array,wave7Array,wave8Array,wave9Array,wave10Array,wave11Array,wave12Array,wave13Array,wave14Array,wave15Array,wave16Array,wave17Array,wave18Array,wave19Array,wave20Array,wave21Array,wave22Array,wave23Array,wave24Array,wave25Array,wave26Array,wave27Array,wave28Array, wave29Array,wave30Array,wave31Array,wave32Array,wave33Array,wave34Array,wave35Array,wave36Array,wave37Array,wave38Array,wave39Array,wave40Array,wave41Array,wave42Array,wave43Array,wave44Array,wave45Array,wave46Array,wave47Array,wave48Array,wave49Array,wave50Array,wave51Array,wave52Array,wave53Array,wave54Array,wave55Array,wave56Array, wave57Array,wave58Array,wave59Array,wave60Array,0]
var WhichWave=waves.pop_front()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_spawn_timer_timeout():
	#if wave not finished or boss wave
	if (waveNum!=0 and waveNum!=20 and waveNum!=40 and waveNum!=60)&&waveFinished==false:
		#grab the enemy
		var nextEnemy=WhichWave.pop_front()
		#if enemy is there, create enemy
		if nextEnemy!=0:
			var virus = virusProtoype.instantiate()
			virus.colorType=nextEnemy
			virus.path=pathAssign
			# add the new virus to the scene tree (e.g., Firewall node)
			add_child(virus)
			
		else:
			WhichWave.insert(0,0)
			waveFinished=true
	elif (waveNum==20)&&waveFinished==false:
		var spamGo=SpamEmail.instantiate()
		spamGo.path=pathAssign
		add_child(spamGo)
		waveFinished=true
	elif (waveNum==40)&&waveFinished==false:
		var poppupGo=Poppup.instantiate()
		poppupGo.path=pathAssign
		add_child(poppupGo)
		waveFinished=true
	elif (waveNum==60)&&waveFinished==false:
		var mydoomGo=MyDoom.instantiate()
		mydoomGo.path=pathAssign
		add_child(mydoomGo)
		waveFinished=true
	
	


func _on_next_wave_pressed() -> void:
	
	if waveFinished==true:
		waveNum+=1
		$Label.text="Wave: "+str(waveNum)
		WhichWave=waves.pop_front()
		waveFinished=false
	
