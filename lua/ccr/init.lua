local uv = vim.loop
local expand = vim.fn.expand

local M = {}

local function set_to_reg(content)
	local sysname = uv.os_uname().sysname
	local cmd = [[let @+=]]
	if sysname == "Darwin" or sysname == "Windows_NT" or vim.fn.has("gui") then
		cmd = [[let @*=]]
	end
	vim.cmd(cmd .. "'" .. content .. "'")
end

function M.copy_rel_path()
	local ok, _ = pcall(set_to_reg, expand("%"))
	if ok then
		vim.notify("Relative path copied")
	end
end

function M.copy_rel_path_and_line()
	local ok, _ = pcall(set_to_reg, expand("%") .. ":" .. vim.fn.line("."))
	if ok then
		vim.notify("Relative path and line copied")
	end
end

function M.copy_abs_path()
	local ok, _ = pcall(set_to_reg, expand("%:p"))
	if ok then
		vim.notify("Absolute path copied")
	end
end

function M.copy_abs_path_and_line()
	local ok, _ = pcall(set_to_reg, expand("%:p") .. ":" .. vim.fn.line("."))
	if ok then
		vim.notify("Absolute path and line copied")
	end
end

function M.copy_file_name()
	local ok, _ = pcall(set_to_reg, expand("%:t"))
	if ok then
		vim.notify("File name copied")
	end
end

function M.copy_dir_path()
	local ok, _ = pcall(set_to_reg, expand("%:p:h"))
	if ok then
		vim.notify("Directory path copied")
	end
end

return M
