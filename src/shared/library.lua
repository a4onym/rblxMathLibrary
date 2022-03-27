local library = {}

function library.fac(n: number)
	if typeof(n) == "number" and n > 0 then
		if n == 0 then
			return 0
		elseif n == 1 then
			return 1
		end

		local result = 1

		for i = n, 1, -1 do
			if tostring(result) == "inf" then
				break
			end

			result = result * i
		end

		return result
	end
end

function library.angle(startVector: Vector3?, endVector: Vector3?)
	if typeof(startVector) == "Vector3" and typeof(endVector) == "Vector3" then
		return math.deg(
			math.acos(
				(startVector.X * endVector.X + startVector.Y * endVector.Y + startVector.Z * endVector.Z)
					/ (startVector.Magnitude * endVector.Magnitude)
			)
		)
	elseif typeof(startVector) == "Vector2" and typeof(endVector) == "Vector2" then
		return math.deg(
			math.acos(
				(startVector.X * endVector.X + startVector.Y * endVector.Y)
					/ (startVector.Magnitude * endVector.Magnitude)
			)
		)
	end
end

function library.gamma(n: number)
	if typeof(n) == "number" and n > 0 then

        return library.fac((n - 1))

	end
end

return library
