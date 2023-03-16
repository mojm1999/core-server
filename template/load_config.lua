local result = {}
local function getenv(name)
    return assert(os.getenv(name), [[os.getenv() failed: ]] .. name)
end
local sep = package.config:sub(1,1)
--print(sep)
local current_path = [[.]]..sep
local function include(filename)
    local last_path = current_path
    local path, name = filename:match([[(.*)]]..sep..[[)(.*)$]])
end
setmetatable(result, { __index = { include = include } })
local config_name = ...
--include(config_name)
setmetatable(result, nil)
--return result

local str123 = "./examples/config"
local path, name = str123:match([[(.*)]]..sep..[[(.*)$]])
print(path, name)