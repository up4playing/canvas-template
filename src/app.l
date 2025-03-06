app
	start
		graphics.drawingOrder = ItemsDrawnFirstWillBeInTheBack
		Menu()
		
	tick
		players.each.tick
		
Player
	Direction dir = Direction.horizontalDirections[index]
	Vector2 pos = dir.vector * {690,265}
		
	tick
		// Draw video
		float radius = 255
		drawCircle pos, size:radius*2, outlineColor:color, outlineWidth:12
		drawVideo me, pos, size:radius*2-75, shape:Circle

		// Draw score
		Vector2 scorePos = pos + math.getVectorForAngle(-45°)*radius
		drawCircle scorePos, color:Black, outlineColor:color, size:60
		drawText score, scorePos, size:31
