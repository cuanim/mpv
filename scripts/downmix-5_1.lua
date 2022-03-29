local options = require 'mp.options'

function downmix51(name,channel)
    -- print(channel)
    if channel == 6 then
    mp.commandv("af","set","lavfi=\"pan=stereo|FL < 0.5*FC + 0.3*FLC + 0.3*FL + 0.3*BL + 0.3*SL + 0.5*LFE | FR < 0.5*FC + 0.3*FRC + 0.3*FR + 0.3*BR + 0.3*SR + 0.5*LFE\"")
    mp.commandv("af","add","lavfi=\"acompressor=10\"")
    else
    mp.commandv("af","clr","")
    end
end

mp.observe_property("audio-params/channel-count","number",downmix51)