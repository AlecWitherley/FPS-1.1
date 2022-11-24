extends Spatial

var rng = RandomNumberGenerator.new()
func _ready():
	rng.randomize()
	var my_random_number = rng.randf_range(1.0, 16.0)
	
func _physics_process(delta):
	rng.randomize()
	var intensity = rng.randf_range(1.0, 16.0)
	$OmniLight.light_energy = intensity
