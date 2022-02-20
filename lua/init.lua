require("chad.options")
require("chad.icons")
require("chad.plugins")
require("chad.nvim-tree")
require("chad.lualine")
require("chad.keymaps")

P = function(v)
	print(vim.inspect(v))
	return v
end

if pcall(require, "plenary") then
	RELOAD = require("plenary.reload").reload_module

	R = function(name)
		RELOAD(name)
		return require(name)
	end
end
