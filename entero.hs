-- Tipos dados
data Natural  = Cero | S Natural deriving (Eq, Show)
data Entero   = Zero | Succ Ent | Neg Ent deriving (Eq, Show)
data Matrioshka = Mit | Cont Matrioshka deriving (Eq, Show)

-- 2. a_entero: convierte un Natural a su valor entero
-- Ejemplos de uso:
--   a_entero Cero                 == 0
--   a_entero (S Cero)             == 1
--   a_entero (S (S (S Cero)))     == 3
a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n
