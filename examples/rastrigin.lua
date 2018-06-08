-- Usage example. Could be made shorter.
local DE = require('de')
math.randomseed( os.time() )

local solver = DE.new(2, 40) -- dimensions, population
solver.limits[1] = {-5.12, 5.12}
solver.limits[2] = {-5.12, 5.12}

-- solver.f  = 0.8
-- solver.cr = 0.9

function solver.fitness(v)
    local x, y = v[1], v[2]
    
    -- Rastrigin's function
    local a   = x*x - 10 * math.cos(2 * math.pi * x)
    local b   = y*y - 10 * math.cos(2 * math.pi * y)
    local val = 20 + a + b
    
    return -val -- minimization
end

-- creates the initial population
solver:init()

-- stops at (whatever comes first)
-- 1) 1000 iterations
-- 2) gets stuck (repeats 50 iterations without enhancing at least 1e-6)
local it, fit, best = solver:run(1000, 1e-6, 50)

-- output the best solution found
print( string.format([[
------------------------------
| Iterations = %d
| fitness    = %.6f
| x, y       = %.3f, %.3f
------------------------------]], it, fit, best[1], best[2]))
