-------------------------------
-- Hydroxide Loader          --
-------------------------------
-- See also: https://one.hydroxide.cc/

local owner = 'Upbolt'; -- Use the ?owner= parameter to change this
local branch = 'revision'; -- Use the ?repo= parameter to change this

-- Define Loader Function
local webImport = function(file)
    return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')();
end;

-- Import Files
webImport('init');
webImport('ui/main');
