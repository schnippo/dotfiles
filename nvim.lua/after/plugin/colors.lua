-- require 'hexokinase'.setup()
function ColorMyPencils(color)
	color = color or "tokyonight-moon"
	-- color = color or "shine"
	-- color = color or "rose-pine-moon"
	vim.cmd.colorscheme(color)
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
