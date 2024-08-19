local RandomGenerator = {}
RandomGenerator.__index = RandomGenerator

function RandomGenerator.new(seed)
    local self = setmetatable({}, RandomGenerator)
    self.seed = seed or os.time()
    return self
end

function RandomGenerator:random(min, max)
    if min > max then
        min, max = max, min
    end

    local a = 1664525 * os.clock()
    local c = 1013904223 * os.clock()
    local m = 2^32

    self.seed = (a * self.seed + c) % m

    return math.floor(min + (self.seed / m) * (max - min + 1))
end

local rng = RandomGenerator.new(os.time())
for i = 1, 10 do
    print(rng:random(1, 100))
end
