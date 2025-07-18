#import "../styles.typ": *

#counter(heading).update(1)
= Medidas e unidades

#set heading(numbering: none)
== Problemas (pág. 43)

+ As massas atômicas, representadas na Tab A.1, são expressas em _unidades de massa atômica_, abreviadas por $"u"$. $1 "u"$ é igual a $1,6604 times 10^(-27)$ kg. Calcule, em quilogramas e em gramas, as massas de

  #set enum(numbering: "(a)")
  + um átomo de hidrogênio e

  #solution([
    #let uma = 1.6604e-27 // Unidades de massa atômica em kg
    #let H-massa-u = 1.00797 // Massa atômica do átomo de hidrogênio em uma
    #let H-massa-kg = H-massa-u * uma

    Conforme dados da Tab. A.1, a massa do hidrogênio em _unidades de massa atômica_ é igual a #sci-fmt(H-massa-u, precision: 5) $"u"$
    $
      m_(k g) &= m_u dot frac(#sci-fmt(uma, precision: 4) "kg", "1 u") = #sci-fmt(H-massa-u, precision: 5) "u" dot frac(#sci-fmt(uma, precision: 4) "kg", "1 u") approx #sci-fmt(H-massa-kg, precision: 4) "kg"
    $
    
  ])

  + um átomo de oxigênio

