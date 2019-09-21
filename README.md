# Function ents.FindInBoxRotated

	This finds the entity in the rotated box.
	Created for Gmod

# Arguments

	Vector - Box center,
	Angle - Box rotate,
	Int - X,
	Int - Y,
	Int - Z,
	Int - Dist for Sphere - It should have a multiplier of 1.5 from the largest value.

# Result

	Return a table of all found entities. Has a limit of 1024 entities.

# Performance

	About 2 times slower than ents.FindInBox and slightly slower than ents.FindInSphere.
	
# Thanks

	Nak - for the description of the function made in 2016
