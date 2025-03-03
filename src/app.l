app
	start
		Menu()
		
	tick
		players.each.tick
		
Player
	Direction dir = Direction.horizontalDirections[index]
	Vector2 pos = dir.vector * {690,265}
		
	tick
		// Draw score
		float radius = 255
		Vector2 scorePos = pos + math.getVectorForAngle(-45°)*radius
		drawText score, scorePos, size:31
		drawCircle scorePos, color:Black, outlineColor:color, size:60
		
		// Draw video
		drawVideo me, pos, size:radius*2-75, shape:Circle
		drawCircle pos, size:radius*2, outlineColor:color, outlineWidth:12
