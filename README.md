# Function ents.FindInBoxRotated

	This finds the entity in the rotated box.
	Like ents.FindInBox but rotated =)
	Created for Garry's mod (GMod) in Lua (GLua)

# Arguments

	Vector - Box center,
	Angle - Box rotate,
	Vector - Box min,
	Vector - Box max,

# Result

	Return a table of all found entities. Has a limit of 1024 entities.

# Performance

	About 2 times slower than ents.FindInBox and slightly slower than ents.FindInSphere.
	
# Thanks

	Nak - for the description of the function made in 2016
