# Использование:

```
    -- Создаём экземпляр генератора:
    local rng = RandomGenerator.new(os.time())
    -- Создаём 10 (псевдо-)случайных чисел в диапазоне от 1 до 100 (включительно):
    for i = 1, 10 do
        print(rng:random(1, 100))
    end
```
