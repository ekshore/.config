
local onedark = require('onedark')
function setColor(color)
	onedark.setup {
		style = 'darker',
		transparent = true,

		code_style = {
			comments = 'italic'
		},

		highlights = {
		}
	}
	color = color or 'onedark'
	vim.cmd.colorscheme(color)

end

setColor()
