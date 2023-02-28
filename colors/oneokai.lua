for k in pairs(package.loaded) do
    if k:match(".*oneokai.*") then package.loaded[k] = nil end
end

require('oneokai').setup()
require('oneokai').colorscheme()
