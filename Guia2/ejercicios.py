

from sympy import FiniteSet

# Estableciendo conjuntos
A={"a","b","c","d","e"}
B={"b","d","e"}

# Intersección de conjuntos BnB
Interseccion = B.intersection(B)

#Union de conjuntos AuB
Union = A.union(B)

# Diferencia de conjuntos B-A
Diferencia = B-A

# Salidas
print ("Sean A =",A," y ","B =",B)
print("Union de conjuntos AuB: ", Union)
print("Intersección de conjuntos BnB: ", Interseccion)
print("Diferencia de conjuntos B-A: ", Diferencia)

# Calculo y salida de conjunto potencia de A
A = FiniteSet("a","b","c","d","e")
Potencia = A.powerset()
print("Conjunto potencia de A: ",Potencia)

# Calculo y salida de la cardinalidad del conjunto potencia de A
print("Cardinalidad del conjunto A: ", len(Potencia))

