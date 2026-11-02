-- Tipos dados
data Natural  = Cero | S Natural deriving (Eq, Show)
data Entero   = Zero | Succ Ent | Neg Ent deriving (Eq, Show)
data Matrioshka = Mit | Cont Matrioshka deriving (Eq, Show)

-- a_entero: convierte un natural a su valor entero
-- Ejemplos:
--   a_entero Cero                 == 0
--   a_entero (S Cero)             == 1
--   a_entero (S (S (S Cero)))     == 3
