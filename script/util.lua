local util = util or {}

function util.get_area(position, distance)
	return {
		{position.x - distance, position.y - distance},
		{position.x + distance, position.y + distance}
	}
end

function util.get_directional_search_area(position, direction, distance, offset)
	local area
	
	if direction == defines.direction.north then
		area = {{position.x - offset, position.y - distance}, {position.x + offset, position.y - distance}}
	elseif direction == defines.direction.west then
		area = {{position.x - distance - 0.1, position.y - offset}, {position.x - distance + 0.1, position.y + offset}}
	elseif direction == defines.direction.south then
		area = {{position.x - offset, position.y + distance}, {position.x + offset, position.y + distance}}
	elseif direction == defines.direction.east then
		area = {{position.x + distance - 0.1, position.y - offset}, {position.x + distance + 0.1, position.y + offset}}
	end
	
	return area
end

return util
