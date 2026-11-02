--   Estructuras definidas:
--      Natural
--      Entero
--      Matrioska
--   Funcion:
--   a_natural :: Entero --> Natural

-- Números naturales: 0,1,2,3,...,
data Natural = Cero | S Natural
  deriving (Eq, Show)

-- Enteros: -2,-1,0,1,2
data Entero = Zero | Succ Entero | Neg Entero
  deriving (Eq, Show)

-- Matrioskas
data Matrioska = Mati | Cont Matrioska
  deriving (Eq, Show)

-- | Convierte un entero no negativo (0,1,2,...,) a su representacion en el tipo de dato 'Natural'
--   Ejemplos:
--   >>> a_natural 0
--   Cero
--   >>> a_natural 2
--   S (S Cero)
--   >>> a_natural 1
--   S Cero
a_natural :: Integer -> Natural
a_natural 0 = Cero
a_natural n
  | n > 0     = S (a_natural (n - 1))
  | otherwise = error "a_natural: el numero debe ser un entero no negativo"