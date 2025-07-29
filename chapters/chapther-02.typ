#import "../styles.typ": *

#counter(heading).update(1)
= Medidas e unidades

#set heading(numbering: none)
== Problemas (pág. 43)
// Dados Gerais
#let uma              = 1.6604e-27 // Unidades de massa atômica em kg
#let h-ma-u = 1.00797 // Massa atômica do Hidrogênio em uma
#let o-ma-u = 15.9994 // Massa atômica do Oxigênio em uma
#let rho-h2o-si = 1000 // No SI ou seja, em quilograma por metro cúbico 
#let rho-h2o = 1 // grama por centímetro cúbico    

+ As massas atômicas, representadas na Tab A.1, são expressas em _unidades de massa atômica_, abreviadas por $"u"$. $1 "u"$ é igual a $1,6604 times 10^(-27)$ kg. Calcule, em quilogramas e em gramas, as massas de

  #set enum(numbering: "(a)")
  + um átomo de hidrogênio e

  #let h-ma-kg = h-ma-u * uma
  #let h-ma-g = h-ma-kg * 1000

  #solution([
    Conforme dados da Tab. A.1, a massa do Hidrogênio em _unidades de massa atômica_ é igual a $#fmt(h-ma-u, precision: 5) "u"$
    $
      m_(H (k g)) = m_(H (u)) dot frac(#fmt(uma, precision: 4) "kg", "1 u") = #fmt(h-ma-u, precision: 5) "u" dot frac(#fmt(uma, precision: 4) "kg", "1 u") approx #fmt(h-ma-kg, precision: 4) "kg"\
      m_(H (g)) = m_(H (k g)) dot frac(1000 "g",1 "kg") = #fmt(h-ma-kg, precision: 4) "kg" dot frac(1000 "g",1 "kg") = #fmt(h-ma-g, precision: 4)  " g"
    $
    
  ])

  + um átomo de oxigênio

  #let o-ma-kg = o-ma-u * uma
  #let o-ma-g = o-ma-kg * 1000

  #solution([
    Conforme dados da Tab. A.1, a massa atômica do átomo de Oxigênio é igual a $#fmt(o-ma-u, precision: 4, sci: false) "u"$
    $
      m_(O (k g)) = m_(O (u)) dot frac(#fmt(uma, precision: 4) "kg", 1 "u") = #fmt(o-ma-u, precision: 5, sci:false) "u" dot frac(#fmt(uma, precision: 5) "kg", 1 "u") approx #fmt(o-ma-kg, precision: 4) "kg" \
      m_(O (g)) = m_(O (k g)) dot frac(1000 "g", 1 "kg") = #fmt(o-ma-kg, precision: 4) "kg" dot frac(1000 "g", 1 "kg") = #fmt(o-ma-g, precision: 4) "g"
    $
  ])  

+ Quantas moléculas, cada uma composta por um átomo de oxigênio e dois átomos de hidrogênio, existem num grama de água? Quantas existem em 18 gramas? Quantas existem em um centímetro cúbico?
  #let h2o-ma-g = o-ma-g + 2 * h-ma-g
  #let n-h2o-1g = 1/h2o-ma-g
  #let n-h2o-18g = 18 * n-h2o-1g
  #let n-h2o-1cm3 = rho-h2o * 1 / h2o-ma-g

  #solution([
    Primeiramente, utilizamos o resultado do Prob. 2.1 (b) para calcular a massa de uma molécula de água (um átomo de oxigênio e dois átomos de hidrogênio) em gramas ($"g"$):

    $
      m_(H_2O (g)) = m_(O (g)) + 2 dot m_(H (g)) =  (#fmt(o-ma-g, precision: 4) " g") + 2 dot (#fmt(h-ma-g, precision: 4) " g")\
       m_(H_2O (g)) = #fmt(h2o-ma-g, precision: 4) " g"
    $

    Portanto, em $1 "g"$ de água existem:
    $
      N_(1 g) = frac(1, #fmt(h2o-ma-g) " g") = #fmt(n-h2o-1g, precision: 4) "moléculas de água por grama"
    $

    Em 18 gramas, teremos:
    $
      N_(18 g) = 18 dot N_(1 g) = 18 dot #fmt(n-h2o-1g, precision: 4) "moléculas" \
      N_(18 g) approx #fmt(n-h2o-18g, precision: 2) "moléculas de água"
    $

    Finalmente, para determinar a quantidade de moléculas de água em 1 centímetro cúbico, necessitamos da densidade da água: $rho_(H_2O) = 1 "g/cm"^3$. Deforma geral, consideremos que num volume $V$ de água, temos a massa $m = N dot m_(H_2O(g))$ em que $N$ é a quantidade de moléculas presentes no volume $V$ e $m_(H_2O (g))$ é a massa de uma molécula de água em gramas, calculada acima. Assim,
    $
      N dot m_(H_2O(g)) = rho_(H_2_O) V arrow.double N = frac(rho_(H_2_O) V, m_(H_2O(g))) = frac(#fmt(rho-h2o, sci: false) "g/cm"^3 dot 1 "cm"^3, #fmt(o-ma-g, precision: 4) "g") = #fmt(n-h2o-1cm3, precision: 4) "moléculas"
    $
    Obviamente, é o mesmo resultado encontrado na primeira parte deste problema.
     
  ])

+ Na Seç. 2.3 foi mencionado que o quilograma poderia ser definido como sendo igual à mass de $5,0188 times 10^(25)$ átomos do isótopo $attach("C", tl: 12)$, cuja massa é definida como sendo exatamentde $12,0000 " u"$. Verifique se essa definição é compatível com o valor de $"u"$ dado no Prob. 2.1.

  #let c-ma-u = 12.0000
  #let n-atomos-c = 5.0188e25
  #let u = 1/ (c-ma-u * n-atomos-c)
  #solution([
    $
      m_("kg") = N dot m_("u")  arrow.double m_("u") = frac(m_("kg"), N) &arrow.double #fmt(c-ma-u, precision: 5, sci: false) " u" = frac(1 "kg", #fmt(n-atomos-c, precision: 4))\
      &arrow.double 1 "u" = frac(1, #fmt(c-ma-u, sci: false) dot #fmt(n-atomos-c, precision: 5)) "kg"\
      &arrow.double 1 "u" = #fmt(u, precision: 4) ""
    $
  ])



