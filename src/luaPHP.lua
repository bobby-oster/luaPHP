--[[
 
**********
* luaPHP *
**********

-]]

function print_r(expression, indent, done)
	if expression  then
		local pairs, type, print, tostring, rep, len = pairs, type, print, tostring, string.rep, string.len
		done = done or {}
		indent = indent or ''
		for key, value in pairs(expression) do
			if type(value) == "table" and not done[value] then
				local nextIndent = nextIndent or (indent..rep(' ',len(tostring(key))+2))
				done[value] = true
				print(indent.."["..tostring(key).."] => Table {")
				print_r(value, nextIndent..rep(' ',2), done)
				print(nextIndent.."}")
			else
				print(indent.."["..tostring(key).."] => "..tostring(value))
			end
		end
	else
		print("Nil")
	end
end

function file_exists(filename)
	local open, close = io.open, io.close
	local f = open(filename ,"r")
	if f~= nil then close(f)
		return true
	else
		return false
	end
end

function scandir(directory)
    local i, t, popen = 0, {}, io.popen
    for filename in popen('ls -a "'..directory..'"'):lines() do
        i = i + 1
        t[i] = filename
    end
    return t
end

function explode(delimiter, string)
	local i, t, gmatch, tonumber, tostring = 0, {}, string.gmatch, tonumber, tostring
	for v in gmatch(string, "[^"..delimiter.."]*") do
		if trim(v) ~= "" then
			i = i + 1
			if is_numeric(v) then
				t[i] = tonumber(v)
			else
				t[i] = tostring(v)
			end
		end
	end
	return t
end

function is_numeric(var)
	if tonumber(var) ~= nil then
		return true
	end
	return false
end

function trim(str)
	local match = string.match
	return match(str,'^()%s*$') and '' or match(str,'^%s*(.*%S)')
end