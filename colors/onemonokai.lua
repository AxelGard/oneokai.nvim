for k in pairs(package.loaded) do
    if k:match(".*onemonokai.*") then package.loaded[k] = nil end
end

require('onemonokai').setup()
require('onemonokai').colorscheme()
