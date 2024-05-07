G8Math = {}
G8Math.__index = G8Math

function G8Math.lerp(a,b,alpha)
    return (a * (1 - alpha)) + (b * alpha)
end
