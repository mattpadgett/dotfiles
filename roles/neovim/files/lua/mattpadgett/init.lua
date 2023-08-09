local function init()
  require('mattpadgett.vim').init()
  require('mattpadgett.packer').init()
end

return {
  init = init
}
