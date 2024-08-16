return {
  'norcalli/nvim-colorizer.lua',
  config = function ()
    require 'colorizer'.setup({
      css = {
        mode = 'background',
      },
    }, {
      mode = 'foreground',
    })
  end
}