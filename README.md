# Function ents.FindInBoxRotated

	This finds the entity in the rotated box.
	Created for Gmod

# Arguments

	Vector - Box center,
	Angle - Box rotate,
	Vector - Box min,
	Vector - Box max,
	Int - Dist for Sphere - It should have a multiplier of math.Sqrt(2) or `1.4(1421356237)`~ from the largest value.

# Result

	Return a table of all found entities. Has a limit of 1024 entities.

# Performance

	About 2 times slower than ents.FindInBox and slightly slower than ents.FindInSphere.
	
# Thanks

	Nak - for the description of the function made in 2016
