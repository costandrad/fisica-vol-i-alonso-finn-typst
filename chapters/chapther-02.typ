#import "../styles.typ": *

#counter(heading).update(1)
= Medidas e unidades

#set heading(numbering: none)
== Problemas (pág. 43)
// Dados Gerais
#let uma              = 1.6604e-27 // Unidades de massa atômica em kg
#let h-ma-u = 1.00797 // Massa atômica do Hidrogênio em uma
#let o-ma-u = 15.9994 // Massa atômica do Oxigênio em uma
#let fe-ma-u = 55.847 // Massa atômica do Ferro em uma
#let rho-h2o-si = 1000 // No SI ou seja, em quilograma por metro cúbico 
#let rho-h2o = 1 // grama por centímetro cúbico    

// Massa atômica do nitrogênio
#let n-ma-u = 14.0067
// Densidade da água
#let rho-h2o = 1e3 // kg/m^3
// Densidades relativas
#let gamma-h2 = 8.988e-5
#let gamma-o2 = 1.42904e-3 
#let gamma-n2 = 1.25055e-3 
#let gamma-fe = 7.86
// Densidades absolutas em kg/m^3
#let rho-h2 = gamma-h2 * rho-h2o
#let rho-o2 = gamma-o2 * rho-h2o
#let rho-n2 = gamma-n2 * rho-h2o
#let rho-fe = gamma-fe * rho-h2o
// Massa molecular (mm) da cada gás em unidades de massa atômica
#let h2-mm-u = 2 * h-ma-u
#let o2-mm-u = 2 * o-ma-u
#let n2-mm-u = 2 * n-ma-u

// Massa molecular (mm) da cada gás em kg
#let h2-mm-kg = 2 * h-ma-u * uma
#let o2-mm-kg = 2 * o-ma-u * uma
#let n2-mm-kg = 2 * n-ma-u * uma
#let fe-ma-kg = fe-ma-u * uma

// Mass molecular da água em kg
#let h2o-mm-kg = (2 * h-ma-u + o-ma-u) * uma

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

+ Considere as moléculas de hidrogênio, de oxigênio e de nitrogênio, cada uma delas composta por dois átomos idênticos. Calcule o número de moléculas de cada um desses gases, nas condições normais de pressão e temperatura (TPN) existentes em $1 " m"^3$. Use os valores das densidades relativas dadas na Tab. 2.2. Faça uma extensão do seu cálculo que seja válida para outros gases. Qual é a conclusão geral que você poderia tirar dos seus resultados?
  
  #solution([
    // Massa atômica do nitrogênio
    #let n-ma-u = 14.0067
    // Densidade da água
    #let rho-h2o = 1e3 // kg/m^3
    // Densidades relativas
    #let gamma-h2 = 8.988e-5
    #let gamma-o2 = 1.42904e-3 
    #let gamma-n2 = 1.25055e-3 
    // Densidades absolutas em kg/m^3
    #let rho-h2 = gamma-h2 * rho-h2o
    #let rho-o2 = gamma-o2 * rho-h2o
    #let rho-n2 = gamma-n2 * rho-h2o
    // Massa molecular (mm) da cada gás em unidades de massa atômica
    #let h2-mm-u = 2 * h-ma-u
    #let o2-mm-u = 2 * o-ma-u
    #let n2-mm-u = 2 * n-ma-u
    // Massa molecular (mm) de cada gás em kg
    #let h2-mm-kg = h2-mm-u * uma
    #let o2-mm-kg = o2-mm-u * uma
    #let n2-mm-kg = n2-mm-u * u
    // Volume (m^3)
    #let v = 1
    // Quantidade de moléculas em 1 metro cúbico
    #let n-h2 = (gamma-h2 * rho-h2o * v)/h2-mm-kg 
    #let n-o2 = (gamma-o2 * rho-h2o * v)/o2-mm-kg 
    #let n-n2 = (gamma-n2 * rho-h2o * v)/n2-mm-kg 

    De forma geral, seja $rho = gamma dot rho_(H_2O)$ a densidade absoluta de uma substância, cuja densidade relativa em relação à água ($H_2O$) é igual a $gamma$. Em um dado volume $V$, a massa dessa substância é:

    $
      M = rho dot V\ M = (gamma dot rho_(H_2O)) dot V
    $
    Por outro lado, sabendo que tal substância é composta por $N$ moléculas, cada uma com massa $m$, então,

    $
      M = (gamma dot rho_(H_2O)) dot V &arrow.double N dot m  = (gamma dot rho_(H_2O)) dot V\
      &arrow.double N = frac((gamma dot rho_(H_2O)) dot V, m)
    $ 

    Podemos aplicar a fórmula acima para determinar a quantidade de moléculas de cada gás presentes em um volume $V = 1 "m"^3$.
    - Hidrogênio

    A massa de cada molécula de Hidrogênio é:
    $
      m_(H_2) = 2 m_H = 2 dot (#fmt(h-ma-u, precision: 5) "u") = #fmt(h2-mm-u, precision: 5) "u"\
      m_(H_2) = #fmt(h2-mm-u, precision: 5) "u" dot frac(#fmt(u, precision: 4), 1 " u") \
      m_(H_2) = #fmt(h2-mm-kg) "kg"
    $

    Sabendo que a densidade relativa do Hidrogênio em relação à água ($rho_(H_2O) = #fmt(rho-h2o, sci: false) " kg/m"^3$) é $gamma_(H_2) = #fmt(gamma-h2)$, então, quantidade de moléculas no volume $V = 1 "m"^3$ é igual a:
    $
      N_(H_2) = frac((gamma_(H_2) dot rho_(H_2O)) dot V, m_(H_2)) = frac((#fmt(gamma-h2) dot #fmt(rho-h2o, sci: false)) dot 1, #fmt(h2-mm-kg)) = #fmt(n-h2, precision: 2) " moléculas"
    $

  - Oxigênio

  A massa molecular do oxigênio é:
  $
    m_(O_2) = 2 dot m_O = 2 dot (#fmt(o-ma-u, sci: false, precision: 5) "u") = #fmt(o2-mm-u, sci: false) "u"\
    m_(O_2) = #fmt(o2-mm-u, sci: false) "u" dot frac(#fmt(u, precision: 4), 1" u")\
    m_(O_2) = #fmt(o2-mm-kg) "kg"
  $

  Sendo $gamma_(O_2) = #fmt(gamma-o2, precision: 6)$ a densidade relativa do oxigênio, então a quantidade de moéculas presentes em $1 "m"^3$ é:
  $
    N_(O_2) = frac((gamma_(O_2) dot rho_(H_2O)) dot V, m_(O_2)) = frac((#fmt(gamma-o2, precision: 6) dot #fmt(rho-h2o, sci: false)) dot #fmt(v), #fmt(o2-mm-kg)) = #fmt(n-o2, precision: 2) "moléculas"
  $

  - Nitrogênio

  A massa molecular do nitrogênio é:
  $
    m_(N_2) = 2 dot m_N = 2 dot (#fmt(n-ma-u, sci: false, precision: 5) "u") = #fmt(n2-mm-u, sci: false) "u"\
    m_(N_2) = #fmt(n2-mm-u, sci: false) "u" dot frac(#fmt(u, precision: 4), 1" u")\
    m_(N_2) = #fmt(n2-mm-kg) "kg"
  $

  Sendo $gamma_(N_2) = #fmt(gamma-n2, precision: 6)$ a densidade relativa do oxigênio, então a quantidade de moéculas presentes em $1 "m"^3$ é:
  $
    N_(N_2) = frac((gamma_(N_2) dot rho_(H_2O)) dot V, m_(N_2)) = frac((#fmt(gamma-n2, precision: 6) dot #fmt(rho-h2o, sci: false)) dot #fmt(v), #fmt(n2-mm-kg)) = #fmt(n-n2, precision: 2) "moléculas"
  $

  Podemos concluir que a quantidade de moléculas em determinado volume independe do tipo de gás.
  ])

+ Admitindo-se que o ar é composto por 20% de oxigênio e 80% de nitrogênio, e que esses gases formam moléculas diatômicas, calcule a massa molecular "efetiva" do ar. Avalie o número de moléculas em $1 "cm"^3$ de ar nas condições TPN, Quantas moléculas são de oxigênio e quantas são de nitrogênio?

  #solution([
    // Massa atômica do nitrogênio
    #let n-ma-u = 14.0067
    #let ar-ma-u = 0.2 * 2 * o-ma-u + 0.8 * 2 * n-ma-u
    #let ar-ma-kg = ar-ma-u * u
    *Primeira parte:* Seja $N_(a r)$ a quantidade de moléculas de ar presentes em um dado volume $V$, Supondo que o ar é composto por $20%$ de oxigênio ($N_("O"_2) = 0,2 N_(a r)$) e $80%$ de nitrogênio ($N_("N"_2) = 0,8 N_(a r)$), temos:

    $ N_(a r )  = N_("O"_2) + N_("N"_2). $

    Por outro lado, a massa total de ar é:

    $
      M_(a r) = N_("O"_2) dot m_("O"_2) + N_("N"_2) dot m_("N"_2),
    $
    em que $m_("O"_2)$ e $m_("N"_2)$ são respecitvamente as massas moleculares do oxigênio e do nitrogênio. Portanto, a massa molecular efetiva do ar é:
    $
      m_(a r) = frac(M_(a r), N_(a r )) &= frac(N_("O"_2) dot m_("O"_2) + N_("N"_2) dot m_("N"_2), N_("O"_2) + N_("N"_2))\
        m_(a r) &= frac(N_("O"_2), N_( a r)) dot m_("O"_2) + frac(N_("N"_2), N_(a r)) dot m_("N"_2)\
        m_(a r)&= 0,2 dot m_("O"_2) + 0,8 dot m_("N"_2)\
        m_(a r) &= 0,2 dot (2 dot #fmt(o-ma-u, sci:false, precision:5)) + 0,8 dot (2 dot #fmt(n-ma-u, sci: false, precision:5)) = #fmt(ar-ma-u, sci:false, precision:5) frac("u", "molécula")\
        m_(a r) &= (#fmt(ar-ma-u, sci:false, precision:5) frac("u", "molécula")) dot (#fmt(u, precision:4) "kg/u") = #fmt(ar-ma-kg, precision:3) frac("kg", "molécula")
        &
    $ 

    *Segunda parte:* Seja $M_(a r) = M_("O"_2) + M_("N"_2)$ a massa total de ar em um volume $V$ em função da massa total de oxigênio ($M_("O"_2)$), que ocupa o volume $V_("O"_2) = 0,2 V$ e da massa total de nitrogênio, que ocupa o volume $V_("N"_2) = 0,8 V$. Então, 


    $
      M_(a r) = M_("O"_2) + M_("N"_2) &arrow.double M_(a r ) &=& rho_("O"_2) dot V_("O"_2) + rho_("N"_2) dot V_("N"_2)\
        &arrow.double M_(a r) &=& rho_("O"_2) dot (0,2 V) + rho_("N"_2) dot (0,8 V)\
        &arrow.double M_(a r) &=& (0,2 rho_("O"_2) + 0,8 rho_("N"_2)) dot V\
        &arrow.double N_(a r) dot m_(a r) &=& (0,2 rho_("O"_2) + 0,8 rho_("N"_2)) dot V\
        &arrow.double N_(a r)/V &=& frac(0","2 rho_("O"_2) + 0","8 rho_("N"_2) , m_(a r))
     $

     #let n-ar-1m3 = (0.2 * rho-o2 + 0.8 * rho-n2)/(ar-ma-kg)
     #let n-ar-1cm3 = n-ar-1m3 * 1e-6
     #let n-o2-1cm3 = 0.2 * n-ar-1cm3
     #let n-n2-1cm3 = 9.8 * n-ar-1cm3

     Para determinar a quantidade de moléculas de ar em $1 "cm"^3$:
     $
       N_(a r)/V &= frac(0","2 rho_("O"_2) + 0","8 rho_("N"_2) , m_(a r)) = frac(0","2 dot (#fmt(rho-o2) "kg"/"m"^3) + 0","8 dot (#fmt(rho-n2) "kg"/"m"^3) , #fmt(ar-ma-kg) frac("kg", "molécula")) \
        N_(a r)/V &= #fmt(n-ar-1m3)  "moléculas"/"m"^3\
        N_(a r)/V &= #fmt(n-ar-1m3)  "moléculas"/"m"^3 dot (frac( 1"m"^3, 10^6 "cm"^3))\
        N_(a r)/V &= #fmt(n-ar-1cm3)  "moléculas"/"cm"^3
     $
    
    *Terceira parte*: Do total de moléculas de ar, temos:
      $
        N_("O"_2)/V = 0,2 dot N_(a r)/V = 0,2 dot #fmt(n-ar-1cm3) "moléculas"/"cm"^3 = #fmt(n-o2-1cm3) " " "moléculas"/"cm"^3\
        N_("N"_2)/V = 0,8 dot N_(a r)/V = 0,8 dot #fmt(n-ar-1cm3) "moléculas"/"cm"^3 = #fmt(n-n2-1cm3) " " "moléculas"/"cm"^3\
      $
  ])

+ A densidade do gás interestelar na nossa galáxia é avaliada em cerca de $10^(-21) "kg" dot "m"^(-3)$. Admitindo-se que esse gás é constituído principalmente de hidrogênio, avalie o número de átomos de hidrogênio por $"cm"^3$. Compare esse resultado com o correspondente obtido para o ar nas condições TPN (Prob. 2.5).

  #solution([
    #let rho-gas = 1e-21
    #let n-gas-1m3 = rho-gas / h-ma-kg
    #let n-gas-1cm3 = n-gas-1m3 * 1e-6
    $
      rho_("H"_2) = M/V arrow.double frac(N dot m_("H"_2), V) arrow.double N/V = &frac(rho_("H"_2), m_("H"_2)) = frac(#fmt(rho-gas) "kg"/"m"^3, #fmt(2 * h2-mm-kg) "kg"/"molécula")\
      &frac(rho_("H"_2), m_("H"_2)) = #fmt(n-gas-1m3) "moléculas/m"^3\
      &frac(rho_("H"_2), m_("H"_2)) = #fmt(n-gas-1m3, precision:2) "moléculas/m"^3 dot (frac( 1"m"^3, 10^6 "cm"^3))\
      &frac(rho_("H"_2), m_("H"_2)) = #fmt(n-gas-1cm3, sci:false, precision: 2) "moléculas/cm"^3
    $
  ])

+ Um copo de 2 cm de raio contém água. Em duas horas, o nível da água baixa 1mm. Avalie, em gramas por hora, a velocidade de evaporação da água. Quantas moléculas de água estão se evaporando por segundo em cada centímetro quadrado da superfície da água?

  #solution([
    #let rho-h2o-cgs = 1 // Densidade da água em g/cm^3
    #let r = 2 // raio em cm
    #let dhdt = .1/2 // taxa de evaporação em cm/h
    #let dmdt = rho-h2o-cgs * calc.pi * calc.pow(r, 2) * dhdt
    #let dNdt = (rho-h2o-cgs / (h2o-mm-kg * 1000)) * dhdt * (1/3600)

    Seja a taxa de evaporação $display(frac(d h, d t)) = display(frac(1 "mm", 2 "h")) = 0,5 "mm/h" = 0,5 "cm/h"$. Então,
    $
      rho = M/V &arrow.double M = rho dot V arrow.double M = rho dot (S h) arrow.double M = rho dot (pi r^2 h)\
      &arrow.double frac(d M, d t) = rho (pi r^2 dot frac(d h, d t))\
      &arrow.double frac(d M, d t) = (#fmt(rho-h2o-cgs) "g/cm"^3) dot (pi dot (#fmt(r) "cm")^2 dot (#fmt(dhdt, sci: false) "cm/h"))\
      &arrow.double frac(d M, d t) = #fmt(dmdt, sci: false) "g/h"
    $

    
    Seja a massa molecular da água: $m = 2 m_("H"_2) + m_("O"_2) = 2 dot (#fmt(h-ma-u * uma) "kg") + (#fmt(o-ma-u * uma) "kg") = #fmt(h2o-mm-kg) "kg"$.

    Para determinarmos a quantidade de moléculas se evaporando por segundo em cada centímetro quadrado, façamos:
    $
      rho = M/V &arrow.double M = rho dot V arrow.double rho dot (S h)\
        &arrow.double N dot m = rho S h\
        &arrow.double frac(d N, d t) dot m = rho S dot frac(d h, d t)\
        &arrow.double 1/S dot frac(d N, d t) = frac(rho, m) dot frac(d h, d t)\
        &arrow.double 1/S dot frac(d N, d t) = frac(#fmt(rho-h2o-cgs, sci: false) " g/cm"^3, #fmt(h2o-mm-kg) "kg" dot 1000 "g/kg") dot (#fmt(dhdt, sci:false) "cm"/"h")\
        &arrow.double 1/S dot frac(d N, d t) = frac(#fmt(rho-h2o-cgs, sci: false) " g/cm"^3, #fmt(h2o-mm-kg) "kg" dot 1000 "g/kg") dot (#fmt(dhdt, sci:false) "cm"/"h")  dot (frac(1 " h", 3600 " s"))\
        &arrow.double 1/S dot frac(d N, d t) = #fmt(dNdt, precision: 2) "cm/s"
    $


  ])

  + Um _mol_ de uma substância é definido como sendo uma quantidade dessa substância expressa em _gramas_, numericamente igual à massa molecular dessa substância em $"u"$. (Quando nos referemos a um elemento químico, e não a um composto, usaremos a massa atômoca em vez da massa molecular.) Verifique que o número de moléculas (ou átomos) em um mol de _qualquer_ substância é sempre o mesmo e é igual a $6,0225 times 10^(23)$. Esse número, chamado _constante de Avogadro_, é uma constante física muito importante.

    #solution([
      Consideremos uma substância, cuja massa molecular (ou atômica) em $"u"$ seja igual a $m_u$. Tomemos uma quantidade $m$ (em gramas) dessa referida substância, tal que $m$ é numericamente igual a $m_u$. A quantidade $N$ de _componentes_ (átomos ou moléculas) presentes na massa $m$ é tal que:

      #set text(size: 11pt)
      $
        m "grama" = N dot (m_u "u") &arrow.double N = frac(m "grama", m_u "u")  arrow.double N = frac(cancel(m) "grama", cancel(m)_u "u")\
          &arrow.double N = frac(1 "grama", cancel(1 "u") dot display(frac(#fmt(uma, precision:5) "kg" , cancel(1 "u")))) = frac(1 "grama", #fmt(uma, precision:5) cancel("kg") dot display(frac(10^3 "grama", 1 cancel("kg"))))\
          &arrow.double N = frac(1 cancel("grama"), #fmt(uma * 1e3, precision: 5) cancel("grama")) = frac(1, #fmt(uma * 1e3, precision: 5))\
          &arrow.double N = #fmt(1/(uma * 1e3), precision: 4) "componentes"
      $
    ])


+ Usando os dados das Tabs 2.2 e A.1, avalie a separação média entre moléculas nas condições TPN, no hidrogênio (gás), na água (líquido) e no ferro (sólido).

  #solution([
    De forma geral, consideremos uma substância com densidade $rho$ e cuja massa molecular é $m$. Tomemos uma quantidade $N$ de moléculas  dessa substância, ocupando um volume total $V$. Então,
    $
      rho = (N dot m)/V
    $
    O volume médio $v$ ocupado por cada molécula  é 
    $
      v = V/N arrow.double v = m/rho
    $
    A fim de determinar a separação média entre as moléculas, temos dois modelos a considerar:
      #set enum(numbering: "1.") 
      + Modelo cúbico: cada molécula "ocupa" um espaço cúbico de volume $v$ e lado $l$.
        Nesse caso, a separação média entre as moléculas é igual ao lado do cubo. Ou seja,
        $
          v = m/rho arrow.double l^3 = m/rho arrow.double l = root(3, m/rho)
        $

      + Modelo esférico: cada molécula "ocupa" um espaço esférico de volume $v$ e diâmetro $d$.
        Nesse caso, a separação média entre as moléculas é igual ao diâmetro da esfera. Assim,
        $
          v = m/rho &arrow.double  (pi d^3)/6 = m/rho arrow.double d = root(3, (6m)/(pi rho))
        $

      #let substancias = (
        ("Hidrogênio", h2-mm-kg, rho-h2),
        ("Água", h2o-mm-kg, rho-h2o),
        ("Ferro", fe-ma-kg, rho-fe)
      )
      #let cubic-model(m, d) = (
        calc.root(m/d, 3)
      )
      #let esphere-model(m,d) = (
        calc.root( (6*m)/(calc.pi * d), 3)
      )

      A @tab-separacao-molecular mostra o resultado da aplicação dos dois modelos de cálculo da separação média entre moléculas para: #substancias.map(it => it.at(0)).join(", ").


      #set table(
        stroke: (x, y) => if y == 0 {
          (top: 0.7pt+black)
          (bottom: 0.7pt+black)
        } else {
          (bottom: 0.7pt+black)
        },
        align: center,
        fill: (x, y) => if y <=1 {
          gray.lighten(50%)
        } else if calc.even(y) {
          gray.lighten(85%)
        }
      )
      #figure(
        kind: table,
        caption: [Seperação média entre moléculas de diversas substâncias]
      )[#table(
        columns: 5,
        [], [], [], table.cell(colspan: 2)[Separação ($"m"$)],
        [Substância], [Massa Molecular ($"kg"$)], [Densidade ($"kg/m"^3$)], [Modelo Cúbico], [Modelo Esférico],
        [#substancias.at(0).at(0)], [$#fmt(substancias.at(0).at(1), precision:2)$], [$#fmt(substancias.at(0).at(2), precision:2)$], [#fmt(cubic-model(substancias.at(0).at(1), substancias.at(0).at(2)), precision:3)], [#fmt(esphere-model(substancias.at(0).at(1), substancias.at(0).at(2)), precision:3)],
        [#substancias.at(1).at(0)], [$#fmt(substancias.at(1).at(1), precision:2)$], [$#fmt(substancias.at(1).at(2), sci:true)$], [#fmt(cubic-model(substancias.at(1).at(1), substancias.at(1).at(2)), precision:3)], [#fmt(esphere-model(substancias.at(1).at(1), substancias.at(1).at(2)), precision:3)],
        [#substancias.at(2).at(0)], [$#fmt(substancias.at(2).at(1), precision:2)$], [$#fmt(substancias.at(2).at(2), precision:2)$], [#fmt(cubic-model(substancias.at(2).at(1), substancias.at(2).at(2)), precision:3)], [#fmt(esphere-model(substancias.at(2).at(1), substancias.at(2).at(2)), precision:3)],
      )]<tab-separacao-molecular>
  ])
