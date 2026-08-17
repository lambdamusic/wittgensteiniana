(in-package ocml)

;; note that if one of the dates is nil, we cannot calculate anything.. DO WHAT?
#|
OCML 15 : 3 > (length (setofall '?p '(and (person ?p) (not (has-date-of-death ?p ?x )))))
103

OCML 16 : 3 > (length (setofall '?p '(and (person ?p) (not (has-date-of-birth ?p ?x )))))
43
|#



;; western philosophers


(def-instance DAVID-GEORGE-RITCHIE person
((is-identified-by "David George Ritchie")
 (has-gender male)
 (has-date-of-birth 1853)
 (has-date-of-death 1903)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MAX-BLACK person
((is-identified-by "Max Black")
 (has-gender male)
 (has-date-of-birth 1909)
 (has-date-of-death 1988)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SIGER person
((is-identified-by "Siger")
 (has-gender male)
 (has-date-of-birth 1240)
 (has-date-of-death 1280)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GILLES-DELEUZE person
((is-identified-by "Gilles Deleuze")
 (has-gender male)
 (has-date-of-birth 1925)
 (has-date-of-death 1995)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MARTHA-NUSSBAUM person
((is-identified-by "Martha Nussbaum")
 (has-gender male)
 (has-date-of-birth 1947)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ELIZABETH-OF-BOHEMIA person
((is-identified-by "Elizabeth of Bohemia")
 (has-gender male)
 (has-date-of-birth 1618)
 (has-date-of-death 1680)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance E-NAGEL person
((is-identified-by "E. Nagel")
 (has-gender male)
 (has-date-of-birth 1901)
 (has-date-of-death 1985)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PROTAGORAS person
((is-identified-by "Protagoras")
 (has-gender male)
 (has-date-of-birth -481)
 (has-date-of-death -420)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance AUGUSTUS-DE-MORGAN person
((is-identified-by "Augustus De Morgan")
 (has-gender male)
 (has-date-of-birth 1806)
 (has-date-of-death 1871)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance J-MCTAGGART person
((is-identified-by "J. M. E. McTaggart")
 (has-gender male)
 (has-date-of-birth 1866)
 (has-date-of-death 1925)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance EDMUND-BURKE person
((is-identified-by "Edmund Burke")
 (has-gender male)
 (has-date-of-birth 1729)
 (has-date-of-death 1797)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SAMUEL-CLARKE person
((is-identified-by "Samuel Clarke")
 (has-gender male)
 (has-date-of-birth 1675)
 (has-date-of-death 1729)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PARMENIDES person
((is-identified-by "Parmenides")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ISAIAH-BERLIN person
((is-identified-by "Isaiah Berlin")
 (has-gender male)
 (has-date-of-birth 1909)
 (has-date-of-death 1997)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance BONAVENTURE person
((is-identified-by "Bonaventure")
 (has-gender male)
 (has-date-of-birth 1225)
 (has-date-of-death 1274)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ELIZABETH-STANTON person
((is-identified-by "Elizabeth Stanton")
 (has-gender male)
 (has-date-of-birth 1815)
 (has-date-of-death 1902)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SAMUEL-ALEXANDER person
((is-identified-by "Samuel Alexander")
 (has-gender male)
 (has-date-of-birth 1859)
 (has-date-of-death 1938)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GUY-DEBORD person
((is-identified-by "Guy Debord")
 (has-gender male)
 (has-date-of-birth 1931)
 (has-date-of-death 1994)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ROBERT-NOZICK person
((is-identified-by "Robert Nozick")
 (has-gender male)
 (has-date-of-birth 1938)
 (has-date-of-death 2002)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance BRAND-BLANSHARD person
((is-identified-by "Brand Blanshard")
 (has-gender male)
 (has-date-of-birth 1892)
 (has-date-of-death 1987)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PIERRE-GASSENDI person
((is-identified-by "Pierre Gassendi")
 (has-gender male)
 (has-date-of-birth 1592)
 (has-date-of-death 1655)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MADELINE-DE-SOUVRÉ person
((is-identified-by "Madeline de Souvré")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance LUDWIG-FEUERBACH person
((is-identified-by "Ludwig Feuerbach")
 (has-gender male)
 (has-date-of-birth 1804)
 (has-date-of-death 1872)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HÉLÈNE-CIXOUS person
((is-identified-by "Hélène Cixous")
 (has-gender male)
 (has-date-of-birth 1937)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance NEL-NODDINGS person
((is-identified-by "Nel Noddings")
 (has-gender male)
 (has-date-of-birth 1929)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance G-E-LESSING person
((is-identified-by "G.E. Lessing")
 (has-gender male)
 (has-date-of-birth 1729)
 (has-date-of-death 1781)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HERACLITUS person
((is-identified-by "Heraclitus")
 (has-gender male)
 (has-date-of-birth -535)
 (has-date-of-death -475)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance THOMAS-AQUINAS person
((is-identified-by "Thomas Aquinas")
 (has-gender male)
 (has-date-of-birth 1221)
 (has-date-of-death 1274)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HERBERT-OF-CHERBURY person
((is-identified-by "Herbert of Cherbury")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance J.-L.-AUSTIN person
((is-identified-by "J. L. Austin")
 (has-gender male)
 (has-date-of-birth 1911)
 (has-date-of-death 1960)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GIUSEPPE-PEANO person
((is-identified-by "Giuseppe Peano")
 (has-gender male)
 (has-date-of-birth 1858)
 (has-date-of-death 1932)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GEORGE-HERBERT-MEAD person
((is-identified-by "George Herbert Mead")
 (has-gender male)
 (has-date-of-birth 1863)
 (has-date-of-death 1931)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance WILLARD-VAN-ORMAN-QUINE person
((is-identified-by "Willard Van Orman Quine")
 (has-gender male)
 (has-date-of-birth 1908)
 (has-date-of-death 2000)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance THOMAS-NAGEL person
((is-identified-by "Thomas Nagel")
 (has-gender male)
 (has-date-of-birth 1937)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PIERRE-BAYLE person
((is-identified-by "Pierre Bayle")
 (has-gender male)
 (has-date-of-birth 1647)
 (has-date-of-death 1706)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance DAVID-MALET-ARMSTRONG person
((is-identified-by "David Malet Armstrong")
 (has-gender male)
 (has-date-of-birth 1927)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance RALPH-WALDO-EMERSON person
((is-identified-by "Ralph Waldo Emerson")
 (has-gender male)
 (has-date-of-birth 1803)
 (has-date-of-death 1882)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance RODERICK-CHISHOLM person
((is-identified-by "Roderick Chisholm")
 (has-gender male)
 (has-date-of-birth 1916)
 (has-date-of-death 1999)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance THOMAS-REID person
((is-identified-by "Thomas Reid")
 (has-gender male)
 (has-date-of-birth 1710)
 (has-date-of-death 1796)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance XENOPHANES person
((is-identified-by "Xenophanes")
 (has-gender male)
 (has-date-of-birth -570)
 (has-date-of-death -480)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SIDNEY-MORGENBESSER person
((is-identified-by "Sidney Morgenbesser")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ROGER-BACON person
((is-identified-by "Roger Bacon")
 (has-gender male)
 (has-date-of-birth 1214)
 (has-date-of-death 1294)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GALILEO-GALILEI person
((is-identified-by "Galileo Galilei")
 (has-gender male)
 (has-date-of-birth 1564)
 (has-date-of-death 1642)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance BERNARD-BOSANQUET person
((is-identified-by "Bernard Bosanquet")
 (has-gender male)
 (has-date-of-birth 1848)
 (has-date-of-death 1923)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ALFRED-J.-AYER person
((is-identified-by "Alfred J. Ayer")
 (has-gender male)
 (has-date-of-birth 1910)
 (has-date-of-death 1989)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ALFRED-NORTH-WHITEHEAD person
((is-identified-by "Alfred North Whitehead")
 (has-gender male)
 (has-date-of-birth 1861)
 (has-date-of-death 1947)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance RUDOLF-CARNAP person
((is-identified-by "Rudolf Carnap")
 (has-gender male)
 (has-date-of-birth 1891)
 (has-date-of-death 1970)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOHN-MCDOWELL person
((is-identified-by "John McDowell")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOHN-TOLAND person
((is-identified-by "John Toland")
 (has-gender male)
 (has-date-of-birth 1670)
 (has-date-of-death 1722)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance BERNARD-BOLZANO person
((is-identified-by "Bernard Bolzano")
 (has-gender male)
 (has-date-of-birth 1781)
 (has-date-of-death 1848)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PYTHAGORAS person
((is-identified-by "Pythagoras")
 (has-gender male)
 (has-date-of-birth -580)
 (has-date-of-death -500)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance THOMAS-JEFFERSON person
((is-identified-by "Thomas Jefferson")
 (has-gender male)
 (has-date-of-birth 1743)
 (has-date-of-death 1826)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance CORNELIUS-CASTORIADIS person
((is-identified-by "Cornelius Castoriadis")
 (has-gender male)
 (has-date-of-birth 1922)
 (has-date-of-death 1997)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ALBERT-THE-GREAT person
((is-identified-by "Albert the Great")
 (has-gender male)
 (has-date-of-birth 1193)
 (has-date-of-death 1280)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance COLIN-MCGINN person
((is-identified-by "Colin McGinn")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance DAMARIS-MASHAM person
((is-identified-by "Damaris Masham")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HUGO-GROTIUS person
((is-identified-by "Hugo Grotius")
 (has-gender male)
 (has-date-of-birth 1583)
 (has-date-of-death 1645)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance CHARLES-LUTWIDGE-DODGSON person
((is-identified-by "Charles Lutwidge Dodgson")
 (has-gender male)
 (has-date-of-birth 1832)
 (has-date-of-death 1898)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance G.-E.-M.-ANSCOMBE person
((is-identified-by "G. E. M. Anscombe")
 (has-gender male)
 (has-date-of-birth 1919)
 (has-date-of-death 2001)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance BERTRAND-RUSSELL person
((is-identified-by "Bertrand Russell")
 (has-gender male)
 (has-date-of-birth 1872)
 (has-date-of-death 1970)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ALFRED-TARSKI person
((is-identified-by "Alfred Tarski")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JUDITH-BUTLER person
((is-identified-by "Judith Butler")
 (has-gender male)
 (has-date-of-birth 1956)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance RUTH-BARCAN-MARCUS person
((is-identified-by "Ruth Barcan Marcus")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ANAXIMENES-OF-MILETUS person
((is-identified-by "Anaximenes of Miletus")
 (has-gender male)
 (has-date-of-birth -585)
 (has-date-of-death -525)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PROUDHON person
((is-identified-by "P.J. Proudhon")
 (has-gender male)
 (has-date-of-birth 1809)
 (has-date-of-death 1865)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SLAVOJ-ZIZEK person
((is-identified-by "Slavoj Zizek")
 (has-gender male)
 (has-date-of-birth 1949)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ADAM-SMITH person
((is-identified-by "Adam Smith")
 (has-gender male)
 (has-date-of-birth 1723)
 (has-date-of-death 1790)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ROBERT-GROSSETESTE person
((is-identified-by "Robert Grosseteste")
 (has-gender male)
 (has-date-of-birth 1175)
 (has-date-of-death 1253)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOHN-LOCKE person
((is-identified-by "John Locke")
 (has-gender male)
 (has-date-of-birth 1632)
 (has-date-of-death 1704)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance FRANCIS-BACON person
((is-identified-by "Francis Bacon")
 (has-gender male)
 (has-date-of-birth 1561)
 (has-date-of-death 1626)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance FRIEDRICH-NIETZSCHE person
((is-identified-by "Friedrich Nietzsche")
 (has-gender male)
 (has-date-of-birth 1844)
 (has-date-of-death 1900)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PAUL-VIRILIO person
((is-identified-by "Paul Virilio")
 (has-gender male)
 (has-date-of-birth 1932)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MARTIN-BUBER person
((is-identified-by "Martin Buber")
 (has-gender male)
 (has-date-of-birth 1878)
 (has-date-of-death 1965)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOSÉ-ORTEGA-Y-GASSET person
((is-identified-by "José Ortega y Gasset")
 (has-gender male)
 (has-date-of-birth 1883)
 (has-date-of-death 1955)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PIERRE-BOURDIEU person
((is-identified-by "Pierre Bourdieu")
 (has-gender male)
 (has-date-of-birth 1930)
 (has-date-of-death 2002)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PIERRE-RÉGIS person
((is-identified-by "Pierre Régis")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance DAVID-KELLOGG-LEWIS person
((is-identified-by "David Kellogg Lewis")
 (has-gender male)
 (has-date-of-birth 1941)
 (has-date-of-death 2001)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ST-FRANCIS-OF-ASSISI person
((is-identified-by "St Francis of Assisi")
 (has-gender male)
 (has-date-of-birth 1182)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JAMES-MILL person
((is-identified-by "James Mill")
 (has-gender male)
 (has-date-of-birth 1773)
 (has-date-of-death 1836)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ANAXIMANDER person
((is-identified-by "Anaximander")
 (has-gender male)
 (has-date-of-birth -610)
 (has-date-of-death -546)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance CLAUDE-ADRIEN-HELVÉTIUS person
((is-identified-by "Claude Adrien Helvétius")
 (has-gender male)
 (has-date-of-birth 1715)
 (has-date-of-death 1771)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GIANNI-VATTIMO person
((is-identified-by "Gianni Vattimo")
 (has-gender male)
 (has-date-of-birth 1936)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MARIN-MERSENNE person
((is-identified-by "Marin Mersenne")
 (has-gender male)
 (has-date-of-birth 1588)
 (has-date-of-death 1648)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance KEITH-LEHRER person
((is-identified-by "Keith Lehrer")
 (has-gender male)
 (has-date-of-birth 1936)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance WILHELM-DILTHEY person
((is-identified-by "Wilhelm Dilthey")
 (has-gender male)
 (has-date-of-birth 1833)
 (has-date-of-death 1911)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance FERDINAND-DE-SAUSSURE person
((is-identified-by "Ferdinand de Saussure")
 (has-gender male)
 (has-date-of-birth 1857)
 (has-date-of-death 1913)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MAURICE-BLANCHOT person
((is-identified-by "Maurice Blanchot")
 (has-gender male)
 (has-date-of-birth 1907)
 (has-date-of-death 2003)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ANNE-CONWAY person
((is-identified-by "Anne Conway")
 (has-gender male)
 (has-date-of-birth 1631)
 (has-date-of-death 1679)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JACQUES-MARITAIN person
((is-identified-by "Jacques Maritain")
 (has-gender male)
 (has-date-of-birth 1882)
 (has-date-of-death 1973)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance THALES person
((is-identified-by "Thales")
 (has-gender male)
 (has-date-of-birth -624)
 (has-date-of-death -546)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GEORGE-LAKOFF person
((is-identified-by "George Lakoff")
 (has-gender male)
 (has-date-of-birth 1941)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance WILLIAM-WHEWELL person
((is-identified-by "William Whewell")
 (has-gender male)
 (has-date-of-birth 1794)
 (has-date-of-death 1866)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MAIMONIDES person
((is-identified-by "Maimonides")
 (has-gender male)
 (has-date-of-birth 1135)
 (has-date-of-death 1204)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PAUL-TILLICH person
((is-identified-by "Paul Tillich")
 (has-gender male)
 (has-date-of-birth 1886)
 (has-date-of-death 1965)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance BARON-D-HOLBACH person
((is-identified-by "Baron d'Holbach")
 (has-gender male)
 (has-date-of-birth 1723)
 (has-date-of-death 1789)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JEAN-BAUDRILLARD person
((is-identified-by "Jean Baudrillard")
 (has-gender male)
 (has-date-of-birth 1929)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PIERRE-CHARRON person
((is-identified-by "Pierre Charron")
 (has-gender male)
 (has-date-of-birth 1541)
 (has-date-of-death 1603)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GOTTLOB-FREGE person
((is-identified-by "Gottlob Frege")
 (has-gender male)
 (has-date-of-birth 1848)
 (has-date-of-death 1925)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance BERNARD-STIEGLER person
((is-identified-by "Bernard Stiegler")
 (has-gender male)
 (has-date-of-birth 1952)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MIGUEL-DE-UNAMUNO person
((is-identified-by "Miguel de Unamuno")
 (has-gender male)
 (has-date-of-birth 1864)
 (has-date-of-death 1936)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PAUL-ERDOS person
((is-identified-by "Paul Erdos")
 (has-gender male)
 (has-date-of-birth 1913)
 (has-date-of-death 1996)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance FRIEDRICH-WAISMANN person
((is-identified-by "Friedrich Waismann")
 (has-gender male)
 (has-date-of-birth 1896)
 (has-date-of-death 1959)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance AVERROES person
((is-identified-by "Averroes")
 (has-gender male)
 (has-date-of-birth 1126)
 (has-date-of-death 1198)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance THOMAS-SAMUEL-KUHN person
((is-identified-by "Thomas Samuel Kuhn")
 (has-gender male)
 (has-date-of-birth 1922)
 (has-date-of-death 1996)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance AUGUSTE-COMTE person
((is-identified-by "Auguste Comte")
 (has-gender male)
 (has-date-of-birth 1798)
 (has-date-of-death 1857)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MICHEL-SERRES person
((is-identified-by "Michel Serres")
 (has-gender male)
 (has-date-of-birth 1930)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JEAN-JACQUES-ROUSSEAU person
((is-identified-by "Jean-Jacques Rousseau")
 (has-gender male)
 (has-date-of-birth 1712)
 (has-date-of-death 1778)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ROLAND-BARTHES person
((is-identified-by "Roland Barthes")
 (has-gender male)
 (has-date-of-birth 1915)
 (has-date-of-death 1980)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOHN-CALVIN person
((is-identified-by "John Calvin")
 (has-gender male)
 (has-date-of-birth 1509)
 (has-date-of-death 1564)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ROSA-LUXEMBURG person
((is-identified-by "Rosa Luxemburg")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PETER-LOMBARD person
((is-identified-by "Peter Lombard")
 (has-gender male)
 (has-date-of-birth 1100)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SAUL-KRIPKE person
((is-identified-by "Saul Kripke")
 (has-gender male)
 (has-date-of-birth 1940)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance T-H-GREEN person
((is-identified-by "T.H. Green")
 (has-gender male)
 (has-date-of-birth 1836)
 (has-date-of-death 1882)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance RICHARD-RORTY person
((is-identified-by "Richard Rorty")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ISAAC-NEWTON person
((is-identified-by "Isaac Newton")
 (has-gender male)
 (has-date-of-birth 1643)
 (has-date-of-death 1727)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ALAIN-BADIOU person
((is-identified-by "Alain Badiou")
 (has-gender male)
 (has-date-of-birth 1937)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance A-J-AYER person
((is-identified-by "A.J. Ayer")
 (has-gender male)
 (has-date-of-birth 1910)
 (has-date-of-death 1989)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOHN-AUSTIN person
((is-identified-by "John Austin")
 (has-gender male)
 (has-date-of-birth 1790)
 (has-date-of-death 1859)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance CHRISTINE-KORSGAARD person
((is-identified-by "Christine Korsgaard")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance BROUWER person
((is-identified-by "Luitzen Egbertus Jan Brouwer")
 (has-gender male)
 (has-date-of-birth 1881)
 (has-date-of-death 1966)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOHN-WESLEY person
((is-identified-by "John Wesley")
 (has-gender male)
 (has-date-of-birth 1703)
 (has-date-of-death 1791)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance FRANCISCO-SUAREZ person
((is-identified-by "Francisco Suarez")
 (has-gender male)
 (has-date-of-birth 1548)
 (has-date-of-death 1617)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HANS-VAIHINGER person
((is-identified-by "Hans Vaihinger")
 (has-gender male)
 (has-date-of-birth 1852)
 (has-date-of-death 1933)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GIORGIO-AGAMBEN person
((is-identified-by "Giorgio Agamben")
 (has-gender male)
 (has-date-of-birth 1942)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ABRAHAM-IBN-DAUD person
((is-identified-by "Abraham ibn Daud")
 (has-gender male)
 (has-date-of-birth 1110)
 (has-date-of-death 1180)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JAEGWON-KIM person
((is-identified-by "Jaegwon Kim")
 (has-gender male)
 (has-date-of-birth 1934)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PETER-ABELARD person
((is-identified-by "Peter Abelard")
 (has-gender male)
 (has-date-of-birth 1079)
 (has-date-of-death 1142)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ERNST-MACH person
((is-identified-by "Ernst Mach")
 (has-gender male)
 (has-date-of-birth 1838)
 (has-date-of-death 1916)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PAUL-RICOEUR person
((is-identified-by "Paul Ricoeur")
 (has-gender male)
 (has-date-of-birth 1913)
 (has-date-of-death 2005)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance BARUCH-SPINOZA person
((is-identified-by "Baruch Spinoza")
 (has-gender male)
 (has-date-of-birth 1632)
 (has-date-of-death 1677)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance AYN-RAND person
((is-identified-by "Ayn Rand")
 (has-gender male)
 (has-date-of-birth 1902)
 (has-date-of-death 1982)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance CHARLES-BABBAGE person
((is-identified-by "Charles Babbage")
 (has-gender male)
 (has-date-of-birth 1791)
 (has-date-of-death 1871)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ROSALIND-HURSTHOUSE person
((is-identified-by "Rosalind Hursthouse")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ANTONIO-NEGRI person
((is-identified-by "Antonio Negri")
 (has-gender male)
 (has-date-of-birth 1933)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance DENIS-DIDEROT person
((is-identified-by "Denis Diderot")
 (has-gender male)
 (has-date-of-birth 1713)
 (has-date-of-death 1784)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GIORDANO-BRUNO person
((is-identified-by "Giordano Bruno")
 (has-gender male)
 (has-date-of-birth 1548)
 (has-date-of-death 1600)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance EMMA-GOLDMAN person
((is-identified-by "Emma Goldman")
 (has-gender male)
 (has-date-of-birth 1869)
 (has-date-of-death 1940)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance LOUIS-ALTHUSSER person
((is-identified-by "Louis Althusser")
 (has-gender male)
 (has-date-of-birth 1918)
 (has-date-of-death 1990)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance EDWARD-CAIRD person
((is-identified-by "Edward Caird")
 (has-gender male)
 (has-date-of-birth 1835)
 (has-date-of-death 1908)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance AL-GHAZALI person
((is-identified-by "al-Ghazali")
 (has-gender male)
 (has-date-of-birth 1058)
 (has-date-of-death 1111)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance DAVID-HILBERT person
((is-identified-by "David Hilbert")
 (has-gender male)
 (has-date-of-birth 1862)
 (has-date-of-death 1943)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SAMUEL-VON-PUFENDORF person
((is-identified-by "Samuel von Pufendorf")
 (has-gender male)
 (has-date-of-birth 1632)
 (has-date-of-death 1694)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JEAN-LUC-NANCY person
((is-identified-by "Jean-Luc Nancy")
 (has-gender male)
 (has-date-of-birth 1940)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GASTON-BACHELARD person
((is-identified-by "Gaston Bachelard")
 (has-gender male)
 (has-date-of-birth 1884)
 (has-date-of-death 1962)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance RICHARD-WHATELY person
((is-identified-by "Richard Whately")
 (has-gender male)
 (has-date-of-birth 1787)
 (has-date-of-death 1863)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance CARL-HEMPEL person
((is-identified-by "Carl Hempel")
 (has-gender male)
 (has-date-of-birth 1905)
 (has-date-of-death NIL)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance VOLTAIRE person
((is-identified-by "Voltaire")
 (has-gender male)
 (has-date-of-birth 1694)
 (has-date-of-death 1778)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MICHEL-DE-MONTAIGNE person
((is-identified-by "Michel de Montaigne")
 (has-gender male)
 (has-date-of-birth 1533)
 (has-date-of-death 1592)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance CARL-JUNG person
((is-identified-by "Carl Jung")
 (has-gender male)
 (has-date-of-birth 1875)
 (has-date-of-death 1961)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOHN-HOWARD-YODER person
((is-identified-by "John Howard Yoder")
 (has-gender male)
 (has-date-of-birth 1927)
 (has-date-of-death 1997)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ANSELM person
((is-identified-by "Anselm")
 (has-gender male)
 (has-date-of-birth 1034)
 (has-date-of-death 1109)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance CHARLES-PEIRCE person
((is-identified-by "Charles Peirce")
 (has-gender male)
 (has-date-of-birth 1839)
 (has-date-of-death 1914)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MAURICE-MERLEAU-PONTY person
((is-identified-by "Maurice Merleau-Ponty")
 (has-gender male)
 (has-date-of-birth 1908)
 (has-date-of-death 1961)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance NICOLAS-MALEBRANCHE person
((is-identified-by "Nicolas Malebranche")
 (has-gender male)
 (has-date-of-birth 1638)
 (has-date-of-death 1715)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance C-I-LEWIS person
((is-identified-by "C.I. Lewis")
 (has-gender male)
 (has-date-of-birth 1883)
 (has-date-of-death 1964)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ARTHUR-SCHOPENHAUER person
((is-identified-by "Arthur Schopenhauer")
 (has-gender male)
 (has-date-of-birth 1788)
 (has-date-of-death 1860)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance H.L.A.-HART person
((is-identified-by "H.L.A. Hart")
 (has-gender male)
 (has-date-of-birth 1907)
 (has-date-of-death 1992)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance DARWIN person
((is-identified-by "Darwin")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JEAN-D-ALEMBERT person
((is-identified-by "Jean d'Alembert")
 (has-gender male)
 (has-date-of-birth 1717)
 (has-date-of-death 1783)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance BENEDETTO-CROCE person
((is-identified-by "Benedetto Croce")
 (has-gender male)
 (has-date-of-birth 1866)
 (has-date-of-death 1952)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JEAN-LUC-MARION person
((is-identified-by "Jean-Luc Marion")
 (has-gender male)
 (has-date-of-birth 1946)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance TERESA-OF-AVILA person
((is-identified-by "Teresa of Avila")
 (has-gender male)
 (has-date-of-birth 1515)
 (has-date-of-death 1582)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance IBN-GABIROL person
((is-identified-by "Ibn Gabirol")
 (has-gender male)
 (has-date-of-birth 1021)
 (has-date-of-death 1058)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance FRANTZ-FANON person
((is-identified-by "Frantz Fanon")
 (has-gender male)
 (has-date-of-birth 1925)
 (has-date-of-death 1961)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GILBERT-HARMAN person
((is-identified-by "Gilbert Harman")
 (has-gender male)
 (has-date-of-birth 1938)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance G-E-MOORE person
((is-identified-by "G.E. Moore")
 (has-gender male)
 (has-date-of-birth 1873)
 (has-date-of-death 1958)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance CLIFFORD person
((is-identified-by "W. K. Clifford")
 (has-gender male)
 (has-date-of-birth 1845)
 (has-date-of-death 1879)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ROMAN-INGARDEN person
((is-identified-by "Roman Ingarden")
 (has-gender male)
 (has-date-of-birth 1893)
 (has-date-of-death 1970)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ROBERT-BOYLE person
((is-identified-by "Robert Boyle")
 (has-gender male)
 (has-date-of-birth 1627)
 (has-date-of-death 1691)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance COMTE-DE-SAINT-SIMON person
((is-identified-by "Comte de Saint-Simon")
 (has-gender male)
 (has-date-of-birth 1760)
 (has-date-of-death 1825)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance RICHARD-PRICE person
((is-identified-by "Richard Price")
 (has-gender male)
 (has-date-of-birth 1723)
 (has-date-of-death 1791)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance CAROL-GILLIGAN person
((is-identified-by "Carol Gilligan")
 (has-gender male)
 (has-date-of-birth 1936)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance EPICURUS person
((is-identified-by "Epicurus")
 (has-gender male)
 (has-date-of-birth -341)
 (has-date-of-death -270)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HERBERT-MARCUSE person
((is-identified-by "Herbert Marcuse")
 (has-gender male)
 (has-date-of-birth 1898)
 (has-date-of-death 1979)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MARTIN-LUTHER person
((is-identified-by "Martin Luther")
 (has-gender male)
 (has-date-of-birth 1483)
 (has-date-of-death 1546)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SIMONE-DE-BEAUVOIR person
((is-identified-by "Simone de Beauvoir")
 (has-gender male)
 (has-date-of-birth 1908)
 (has-date-of-death 1986)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ANDREW-SETH-PRINGLE-PATTISON person
((is-identified-by "Andrew Seth Pringle-Pattison")
 (has-gender male)
 (has-date-of-birth 1856)
 (has-date-of-death 1931)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance R.-M.-HARE person
((is-identified-by "R. M. Hare")
 (has-gender male)
 (has-date-of-birth 1919)
 (has-date-of-death 2002)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance KURT-GODEL person
((is-identified-by "Kurt Godel")
 (has-gender male)
 (has-date-of-birth 1906)
 (has-date-of-death 1978)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance RICHARD-DEDEKIND person
((is-identified-by "Richard Dedekind")
 (has-gender male)
 (has-date-of-birth 1831)
 (has-date-of-death 1916)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ETIENNE-DE-CONDILLAC person
((is-identified-by "Etienne de Condillac")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ANTONIO-GRAMSCI person
((is-identified-by "Antonio Gramsci")
 (has-gender male)
 (has-date-of-birth 1891)
 (has-date-of-death 1937)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PYRRHO person
((is-identified-by "Pyrrho")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SIMON-FOUCHER person
((is-identified-by "Simon Foucher")
 (has-gender male)
 (has-date-of-birth 1644)
 (has-date-of-death 1696)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SUSAN-HAACK person
((is-identified-by "Susan Haack")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SIMONE-WEIL person
((is-identified-by "Simone Weil")
 (has-gender male)
 (has-date-of-birth 1909)
 (has-date-of-death 1943)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JEAN-BAPTISTE-LAMARCK person
((is-identified-by "Jean-Baptiste Lamarck")
 (has-gender male)
 (has-date-of-birth 1744)
 (has-date-of-death 1829)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance LAWRENCE-KOHLBERG person
((is-identified-by "Lawrence Kohlberg")
 (has-gender male)
 (has-date-of-birth 1927)
 (has-date-of-death 1987)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance XENOCRATES person
((is-identified-by "Xenocrates")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PAUL-DE-MAN person
((is-identified-by "Paul de Man")
 (has-gender male)
 (has-date-of-birth 1919)
 (has-date-of-death 1983)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JACQUES-ROHAULT person
((is-identified-by "Jacques Rohault")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PETRUS-RAMUS person
((is-identified-by "Petrus Ramus")
 (has-gender male)
 (has-date-of-birth 1515)
 (has-date-of-death 1572)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HEISENBERG person
((is-identified-by "Werner Karl Heisenberg")
 (has-gender male)
 (has-date-of-birth 1901)
 (has-date-of-death 1976)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HENRY-SIDGWICK person
((is-identified-by "Henry Sidgwick")
 (has-gender male)
 (has-date-of-birth 1838)
 (has-date-of-death 1900)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JANE-ADDAMS person
((is-identified-by "Jane Addams")
 (has-gender male)
 (has-date-of-birth 1860)
 (has-date-of-death 1935)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance CHARLES-DE-SECONDAT person
((is-identified-by "Charles de Secondat Baron de Montesquieu")
 (has-gender male)
 (has-date-of-birth 1689)
 (has-date-of-death 1755)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance RALPH-BARTON-PERRY person
((is-identified-by "Ralph Barton Perry")
 (has-gender male)
 (has-date-of-birth 1876)
 (has-date-of-death 1957)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PAUL-GRICE person
((is-identified-by "Paul Grice")
 (has-gender male)
 (has-date-of-birth 1913)
 (has-date-of-death 1988)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GABRIEL-MARCEL person
((is-identified-by "Gabriel Marcel")
 (has-gender male)
 (has-date-of-birth 1889)
 (has-date-of-death 1973)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HEGEL person
((is-identified-by "G.W.F. Hegel")
 (has-gender male)
 (has-date-of-birth 1770)
 (has-date-of-death 1831)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ARISTOTLE person
((is-identified-by "Aristotle")
 (has-gender male)
 (has-date-of-birth -384)
 (has-date-of-death -322)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance STUART-HAMPSHIRE person
((is-identified-by "Stuart Hampshire")
 (has-gender male)
 (has-date-of-birth 1914)
 (has-date-of-death 2004)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JEAN-FRANÇOIS-LYOTARD person
((is-identified-by "Jean-François Lyotard")
 (has-gender male)
 (has-date-of-birth 1924)
 (has-date-of-death 1998)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance RICHARD-CUMBERLAND person
((is-identified-by "Richard Cumberland")
 (has-gender male)
 (has-date-of-birth 1631)
 (has-date-of-death 1718)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SIR-THOMAS-MORE person
((is-identified-by "Sir Thomas More")
 (has-gender male)
 (has-date-of-birth 1478)
 (has-date-of-death 1535)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance KURT-GÖDEL person
((is-identified-by "Kurt Gödel")
 (has-gender male)
 (has-date-of-birth 1906)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance FRANZ-BRENTANO person
((is-identified-by "Franz Brentano")
 (has-gender male)
 (has-date-of-birth 1838)
 (has-date-of-death 1917)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance EDMUND-HUSSERL person
((is-identified-by "Edmund Husserl")
 (has-gender male)
 (has-date-of-birth 1859)
 (has-date-of-death 1938)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance NELSON-GOODMAN person
((is-identified-by "Nelson Goodman")
 (has-gender male)
 (has-date-of-birth 1906)
 (has-date-of-death NIL)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance DAVID-HARTLEY person
((is-identified-by "David Hartley")
 (has-gender male)
 (has-date-of-birth 1705)
 (has-date-of-death 1757)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance EINSTEIN person
((is-identified-by "Albert Einstein")
 (has-gender male)
 (has-date-of-birth 1879)
 (has-date-of-death 1955)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance H-A-PRICHARD person
((is-identified-by "H.A. Prichard")
 (has-gender male)
 (has-date-of-birth 1871)
 (has-date-of-death 1947)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance DE-LAPLACE person
((is-identified-by "P.S. de Laplace")
 (has-gender male)
 (has-date-of-birth 1749)
 (has-date-of-death 1827)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance EUCLID person
((is-identified-by "Euclid")
 (has-gender male)
 (has-date-of-birth -325)
 (has-date-of-death -265)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MARSHALL-MCLUHAN person
((is-identified-by "Marshall McLuhan")
 (has-gender male)
 (has-date-of-birth 1911)
 (has-date-of-death 1980)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ALVIN-GOLDMAN person
((is-identified-by "Alvin Goldman")
 (has-gender male)
 (has-date-of-birth 1938)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance BRIAN-MCGUINNESS person
((is-identified-by "Brian McGuinness")
 (has-gender male)
 (has-date-of-birth 1927)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance KARL-BARTH person
((is-identified-by "Karl Barth")
 (has-gender male)
 (has-date-of-birth 1886)
 (has-date-of-death 1968)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance NICCOLÒ-MACHIAVELLI person
((is-identified-by "Niccolò Machiavelli")
 (has-gender male)
 (has-date-of-birth 1469)
 (has-date-of-death 1527)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ANTOINE-ARNAULD person
((is-identified-by "Antoine Arnauld")
 (has-gender male)
 (has-date-of-birth 1612)
 (has-date-of-death 1694)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance EMMANUEL-LEVINAS person
((is-identified-by "Emmanuel Levinas")
 (has-gender male)
 (has-date-of-birth 1906)
 (has-date-of-death 1995)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MIKHAIL-BAKUNIN person
((is-identified-by "Mikhail Bakunin")
 (has-gender male)
 (has-date-of-birth 1814)
 (has-date-of-death 1876)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PIERRE-DUHEM person
((is-identified-by "Pierre Duhem")
 (has-gender male)
 (has-date-of-birth 1861)
 (has-date-of-death 1916)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JULIEN-LA-METTRIE person
((is-identified-by "Julien La Mettrie")
 (has-gender male)
 (has-date-of-birth 1709)
 (has-date-of-death 1751)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance EDMUND-GETTIER person
((is-identified-by "Edmund Gettier")
 (has-gender male)
 (has-date-of-birth 1927)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance DAVID-PEARS person
((is-identified-by "David Pears")
 (has-gender male)
 (has-date-of-birth 1921)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance DIOGENES-OF-SINOPE person
((is-identified-by "Diogenes of Sinope")
 (has-gender male)
 (has-date-of-birth -399)
 (has-date-of-death -323)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ALAN-TURING person
((is-identified-by "Alan Turing")
 (has-gender male)
 (has-date-of-birth 1912)
 (has-date-of-death 1954)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance CLAUDE-LÉVI-STRAUSS person
((is-identified-by "Claude Lévi-Strauss")
 (has-gender male)
 (has-date-of-birth 1908)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance FRIEDRICH-SCHLEIERMACHER person
((is-identified-by "Friedrich Schleiermacher")
 (has-gender male)
 (has-date-of-birth 1768)
 (has-date-of-death 1834)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance NICOLAI-HARTMANN person
((is-identified-by "Nicolai Hartmann")
 (has-gender male)
 (has-date-of-birth 1882)
 (has-date-of-death 1950)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HANNAH-ARENDT person
((is-identified-by "Hannah Arendt")
 (has-gender male)
 (has-date-of-birth 1906)
 (has-date-of-death 1975)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance EUGENE-GENDLIN person
((is-identified-by "Eugene Gendlin")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MARGARET-CAVENDISH person
((is-identified-by "Margaret Cavendish")
 (has-gender male)
 (has-date-of-birth 1623)
 (has-date-of-death 1673)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance DESIDERIUS-ERASMUS person
((is-identified-by "Desiderius Erasmus")
 (has-gender male)
 (has-date-of-birth 1466)
 (has-date-of-death 1536)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SUSAN-B-ANTHONY person
((is-identified-by "Susan B. Anthony")
 (has-gender male)
 (has-date-of-birth 1820)
 (has-date-of-death 1906)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance CLAUDE-LEFORT person
((is-identified-by "Claude Lefort")
 (has-gender male)
 (has-date-of-birth 1924)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HENRI-POINCARÉ person
((is-identified-by "Henri Poincaré")
 (has-gender male)
 (has-date-of-birth 1854)
 (has-date-of-death 1912)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance C-K-OGDEN person
((is-identified-by "Charles Kay Ogden")
 (has-gender male)
 (has-date-of-birth 1889)
 (has-date-of-death 1957)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ALASDAIR-MACINTYRE person
((is-identified-by "Alasdair MacIntyre")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ERNEST-GELLNER person
((is-identified-by "Ernest Gellner")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance THEODOR-ADORNO person
((is-identified-by "Theodor Adorno")
 (has-gender male)
 (has-date-of-birth 1903)
 (has-date-of-death 1969)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PLATO person
((is-identified-by "Plato")
 (has-gender male)
 (has-date-of-birth -427)
 (has-date-of-death -347)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance COOK-WILSON person
((is-identified-by "Cook Wilson")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance F-W-J-VON-SCHELLING person
((is-identified-by "F.W.J. von Schelling")
 (has-gender male)
 (has-date-of-birth 1775)
 (has-date-of-death 1854)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ERNST-CASSIRER person
((is-identified-by "Ernst Cassirer")
 (has-gender male)
 (has-date-of-birth 1874)
 (has-date-of-death 1945)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HARRY-FRANKFURT person
((is-identified-by "Harry Frankfurt")
 (has-gender male)
 (has-date-of-birth 1929)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance RALPH-CUDWORTH person
((is-identified-by "Ralph Cudworth")
 (has-gender male)
 (has-date-of-birth 1617)
 (has-date-of-death 1688)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance NICHOLAS-WOLTERSTORFF person
((is-identified-by "Nicholas Wolterstorff")
 (has-gender male)
 (has-date-of-birth 1932)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PICO-DELLA-MIRANDOLA person
((is-identified-by "Pico della Mirandola")
 (has-gender male)
 (has-date-of-birth 1463)
 (has-date-of-death 1494)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOHN-VENN person
((is-identified-by "John Venn")
 (has-gender male)
 (has-date-of-birth 1834)
 (has-date-of-death 1923)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HENRI-LEFEBVRE person
((is-identified-by "Henri Lefebvre")
 (has-gender male)
 (has-date-of-birth 1901)
 (has-date-of-death 1991)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance DAVID-HUME person
((is-identified-by "David Hume")
 (has-gender male)
 (has-date-of-birth 1711)
 (has-date-of-death 1776)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance XENOPHON person
((is-identified-by "Xenophon")
 (has-gender male)
 (has-date-of-birth -427)
 (has-date-of-death -355)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PHILIPPA-FOOT person
((is-identified-by "Philippa Foot")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ALEXIUS-MEINONG person
((is-identified-by "Alexius Meinong")
 (has-gender male)
 (has-date-of-birth 1853)
 (has-date-of-death 1920)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GEORG-HENRIK-VON-WRIGHT person
((is-identified-by "Georg Henrik von Wright")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MADAME-DE-STAËL person
((is-identified-by "Madame de Staël")
 (has-gender male)
 (has-date-of-birth 1766)
 (has-date-of-death 1817)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOHN-GAY person
((is-identified-by "John Gay (philosopher)")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance FRANK-P-RAMSEY person
((is-identified-by "Frank P. Ramsey")
 (has-gender male)
 (has-date-of-birth 1903)
 (has-date-of-death 1930)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance LUDWIG-WITTGENSTEIN person
((is-identified-by "Ludwig Wittgenstein")
 (has-gender male)
 (has-date-of-birth 1889)
 (has-date-of-death 1951)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PIERRE-NICOLE person
((is-identified-by "Pierre Nicole")
 (has-gender male)
 (has-date-of-birth 1625)
 (has-date-of-death 1695)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JERRY-FODOR person
((is-identified-by "Jerry Fodor")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HERBERT-SPENCER person
((is-identified-by "Herbert Spencer")
 (has-gender male)
 (has-date-of-birth 1820)
 (has-date-of-death 1903)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance IMRE-LAKATOS person
((is-identified-by "Imre Lakatos")
 (has-gender male)
 (has-date-of-birth 1922)
 (has-date-of-death 1974)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance LORENZO-VALLA person
((is-identified-by "Lorenzo Valla")
 (has-gender male)
 (has-date-of-birth 1406)
 (has-date-of-death 1457)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance CRISPIN-WRIGHT person
((is-identified-by "Crispin Wright")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ANTISTHENES person
((is-identified-by "Antisthenes")
 (has-gender male)
 (has-date-of-birth -444)
 (has-date-of-death -365)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GERAUD-CORDEMOY person
((is-identified-by "Geraud Cordemoy")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance RUDOLF-LOTZE person
((is-identified-by "Rudolf Lotze")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOHN-DEWEY person
((is-identified-by "John Dewey")
 (has-gender male)
 (has-date-of-birth 1859)
 (has-date-of-death 1952)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PHILIPPE-LACOUE-LABARTHE person
((is-identified-by "Philippe Lacoue-Labarthe")
 (has-gender male)
 (has-date-of-birth 1940)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOSEPH-DE-MAISTRE person
((is-identified-by "Joseph de Maistre")
 (has-gender male)
 (has-date-of-birth 1753)
 (has-date-of-death 1821)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance CHRISTIAN-WOLFF person
((is-identified-by "Christian Wolff")
 (has-gender male)
 (has-date-of-birth 1679)
 (has-date-of-death 1754)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance OTTO-NEURATH person
((is-identified-by "Otto Neurath")
 (has-gender male)
 (has-date-of-birth 1882)
 (has-date-of-death 1945)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HERBERT-FEIGL person
((is-identified-by "Herbert Feigl")
 (has-gender male)
 (has-date-of-birth 1902)
 (has-date-of-death 1988)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance C.L.-STEVENSON person
((is-identified-by "C.L. Stevenson")
 (has-gender male)
 (has-date-of-birth 1908)
 (has-date-of-death 1979)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance NICHOLAS-OF-CUSA person
((is-identified-by "Nicholas of Cusa")
 (has-gender male)
 (has-date-of-birth 1401)
 (has-date-of-death 1464)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ARISTIPPUS person
((is-identified-by "Aristippus")
 (has-gender male)
 (has-date-of-birth -435)
 (has-date-of-death -366)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOHN-WISDOM person
((is-identified-by "John Wisdom")
 (has-gender male)
 (has-date-of-birth 1904)
 (has-date-of-death 1993)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MICHAEL-DUMMETT person
((is-identified-by "Michael Dummett")
 (has-gender male)
 (has-date-of-birth 1925)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HENRY-MORE person
((is-identified-by "Henry More")
 (has-gender male)
 (has-date-of-birth 1614)
 (has-date-of-death 1687)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance J-S-MILL person
((is-identified-by "John Stuart Mill")
 (has-gender male)
 (has-date-of-birth 1806)
 (has-date-of-death 1873)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HENRI-BERGSON person
((is-identified-by "Henri Bergson")
 (has-gender male)
 (has-date-of-birth 1859)
 (has-date-of-death 1941)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance TIMAEUS-OF-LOCRI person
((is-identified-by "Timaeus of Locri")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance BERNARD-WILLIAMS person
((is-identified-by "Bernard Williams")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JACQUES-LACAN person
((is-identified-by "Jacques Lacan")
 (has-gender male)
 (has-date-of-birth 1901)
 (has-date-of-death 1981)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOHANN-GOTTLIEB-FICHTE person
((is-identified-by "Johann Gottlieb Fichte")
 (has-gender male)
 (has-date-of-birth 1762)
 (has-date-of-death 1814)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOSEPH-BUTLER person
((is-identified-by "Joseph Butler")
 (has-gender male)
 (has-date-of-birth 1692)
 (has-date-of-death 1752)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MORITZ-SCHLICK person
((is-identified-by "Moritz Schlick")
 (has-gender male)
 (has-date-of-birth 1882)
 (has-date-of-death 1936)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance KARL-JASPERS person
((is-identified-by "Karl Jaspers")
 (has-gender male)
 (has-date-of-birth 1883)
 (has-date-of-death 1969)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HASDAI-CRESCAS person
((is-identified-by "Hasdai Crescas")
 (has-gender male)
 (has-date-of-birth 1340)
 (has-date-of-death ~1411)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ECHECRATES person
((is-identified-by "Echecrates")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JULIA-KRISTEVA person
((is-identified-by "Julia Kristeva")
 (has-gender male)
 (has-date-of-birth 1941)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JUDITH-JARVIS-THOMSON person
((is-identified-by "Judith Jarvis Thomson")
 (has-gender male)
 (has-date-of-birth 1929)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance BLAISE-PASCAL person
((is-identified-by "Blaise Pascal")
 (has-gender male)
 (has-date-of-birth 1623)
 (has-date-of-death 1662)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance CURT-DUCASSE person
((is-identified-by "Curt Ducasse")
 (has-gender male)
 (has-date-of-birth 1881)
 (has-date-of-death 1969)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SIR-WILLIAM-HAMILTON person
((is-identified-by "Sir William Hamilton 9th Baronet")
 (has-gender male)
 (has-date-of-birth 1788)
 (has-date-of-death 1856)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MAX-WEBER person
((is-identified-by "Max Weber")
 (has-gender male)
 (has-date-of-birth 1864)
 (has-date-of-death 1920)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ION-OF-CHIOS person
((is-identified-by "Ion of Chios")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance LUCE-IRIGARAY person
((is-identified-by "Luce Irigaray")
 (has-gender male)
 (has-date-of-birth 1930)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance FRANCIS-HUTCHESON person
((is-identified-by "Francis Hutcheson")
 (has-gender male)
 (has-date-of-birth 1694)
 (has-date-of-death 1746)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance WILLIAM-PALEY person
((is-identified-by "William Paley")
 (has-gender male)
 (has-date-of-birth 1743)
 (has-date-of-death 1805)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance CHARLES-TAYLOR person
((is-identified-by "Charles Taylor")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HANS-KELSEN person
((is-identified-by "Hans Kelsen")
 (has-gender male)
 (has-date-of-birth 1881)
 (has-date-of-death 1973)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MORTIMER-ADLER person
((is-identified-by "Mortimer Adler")
 (has-gender male)
 (has-date-of-birth 1902)
 (has-date-of-death 2001)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JEAN-BURIDAN person
((is-identified-by "Jean Buridan")
 (has-gender male)
 (has-date-of-birth 1300)
 (has-date-of-death 1358)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ARNOLD-GEULINCX person
((is-identified-by "Arnold Geulincx")
 (has-gender male)
 (has-date-of-birth 1624)
 (has-date-of-death 1669)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance DONALD-DAVIDSON person
((is-identified-by "Donald Davidson")
 (has-gender male)
 (has-date-of-birth 1917)
 (has-date-of-death 2003)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SIGMUND-FREUD person
((is-identified-by "Sigmund Freud")
 (has-gender male)
 (has-date-of-birth 1856)
 (has-date-of-death 1939)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance FRIEDRICH-ENGELS person
((is-identified-by "Friedrich Engels")
 (has-gender male)
 (has-date-of-birth 1820)
 (has-date-of-death 1895)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GORGIAS person
((is-identified-by "Gorgias")
 (has-gender male)
 (has-date-of-birth -483)
 (has-date-of-death -375)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MAX-HORKHEIMER person
((is-identified-by "Max Horkheimer")
 (has-gender male)
 (has-date-of-birth 1895)
 (has-date-of-death 1973)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MARTIN-HEIDEGGER person
((is-identified-by "Martin Heidegger")
 (has-gender male)
 (has-date-of-birth 1889)
 (has-date-of-death 1976)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance BERNARD-MANDEVILLE person
((is-identified-by "Bernard Mandeville")
 (has-gender male)
 (has-date-of-birth 1670)
 (has-date-of-death 1733)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance FRIEDRICH-SCHILLER person
((is-identified-by "Friedrich Schiller")
 (has-gender male)
 (has-date-of-birth 1759)
 (has-date-of-death 1805)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance P.-F.-STRAWSON person
((is-identified-by "P. F. Strawson")
 (has-gender male)
 (has-date-of-birth 1919)
 (has-date-of-death 2006)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ALBERT-CAMUS person
((is-identified-by "Albert Camus")
 (has-gender male)
 (has-date-of-birth 1913)
 (has-date-of-death 1960)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance DANIEL-DENNETT person
((is-identified-by "Daniel Dennett")
 (has-gender male)
 (has-date-of-birth 1942)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance CRATYLUS person
((is-identified-by "Cratylus")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GERSONIDES person
((is-identified-by "Gersonides")
 (has-gender male)
 (has-date-of-birth 1288)
 (has-date-of-death 1344)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SANDRA-HARDING person
((is-identified-by "Sandra Harding")
 (has-gender male)
 (has-date-of-birth 1935)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JASON-STANLEY person
((is-identified-by "Jason Stanley")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOSEPH-GLANVILL person
((is-identified-by "Joseph Glanvill")
 (has-gender male)
 (has-date-of-birth 1636)
 (has-date-of-death 1680)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance THORSTEIN-VEBLEN person
((is-identified-by "Thorstein Veblen")
 (has-gender male)
 (has-date-of-birth 1857)
 (has-date-of-death 1929)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PATRICIA-CHURCHLAND person
((is-identified-by "Patricia Churchland")
 (has-gender male)
 (has-date-of-birth 1943)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SOCRATES person
((is-identified-by "Socrates")
 (has-gender male)
 (has-date-of-birth -469)
 (has-date-of-death -399)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HARRIET-TAYLOR-MILL person
((is-identified-by "Harriet Taylor Mill")
 (has-gender male)
 (has-date-of-birth 1807)
 (has-date-of-death 1858)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance WERNER-HAMACHER person
((is-identified-by "Werner Hamacher")
 (has-gender male)
 (has-date-of-birth 1948)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance NIKOLAI-BERDYAEV person
((is-identified-by "Nikolai Berdyaev")
 (has-gender male)
 (has-date-of-birth 1874)
 (has-date-of-death 1948)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GIAMBATTISTA-VICO person
((is-identified-by "Giambattista Vico")
 (has-gender male)
 (has-date-of-birth 1668)
 (has-date-of-death 1744)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance WILLIAM-GODWIN person
((is-identified-by "William Godwin")
 (has-gender male)
 (has-date-of-birth 1756)
 (has-date-of-death 1836)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance J.-J.-C.-SMART person
((is-identified-by "J. J. C. Smart")
 (has-gender male)
 (has-date-of-birth 1920)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SUSANNE-LANGER person
((is-identified-by "Susanne Langer")
 (has-gender male)
 (has-date-of-birth 1895)
 (has-date-of-death 1985)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance VILFREDO-PARETO person
((is-identified-by "Vilfredo Pareto")
 (has-gender male)
 (has-date-of-birth 1848)
 (has-date-of-death 1923)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PAUL-CHURCHLAND person
((is-identified-by "Paul Churchland")
 (has-gender male)
 (has-date-of-birth 1942)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance WILLIAM-OF-OCKHAM person
((is-identified-by "William of Ockham")
 (has-gender male)
 (has-date-of-birth 1288)
 (has-date-of-death 1348)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JÜRGEN-HABERMAS person
((is-identified-by "Jürgen Habermas")
 (has-gender male)
 (has-date-of-birth 1927)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PETER-SINGER person
((is-identified-by "Peter Singer")
 (has-gender male)
 (has-date-of-birth 1946)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance THOMAS-HOBBES person
((is-identified-by "Thomas Hobbes")
 (has-gender male)
 (has-date-of-birth 1588)
 (has-date-of-death 1679)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance DEMOCRITUS person
((is-identified-by "Democritus")
 (has-gender male)
 (has-date-of-birth -450)
 (has-date-of-death -370)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance H-H-PRICE person
((is-identified-by "H.H. Price")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance KARL-MARX person
((is-identified-by "Karl Marx")
 (has-gender male)
 (has-date-of-birth 1818)
 (has-date-of-death 1883)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ANTHONY-GRAYLING person
((is-identified-by "Anthony Grayling")
 (has-gender male)
 (has-date-of-birth 1949)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance DUGALD-STEWART person
((is-identified-by "Dugald Stewart")
 (has-gender male)
 (has-date-of-birth 1753)
 (has-date-of-death 1828)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance W-D-ROSS person
((is-identified-by "W.D. Ross")
 (has-gender male)
 (has-date-of-birth 1877)
 (has-date-of-death 1971)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance CATHERINE-COCKBURN person
((is-identified-by "Catherine Cockburn")
 (has-gender male)
 (has-date-of-birth 1679)
 (has-date-of-death 1749)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ARCHELAUS person
((is-identified-by "Archelaus")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance F.H.-BRADLEY person
((is-identified-by "F.H. Bradley")
 (has-gender male)
 (has-date-of-birth 1846)
 (has-date-of-death 1924)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ALONZO-CHURCH person
((is-identified-by "Alonzo Church")
 (has-gender male)
 (has-date-of-birth 1903)
 (has-date-of-death 1995)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MARSILIUS-OF-PADUA person
((is-identified-by "Marsilius of Padua")
 (has-gender male)
 (has-date-of-birth 1270)
 (has-date-of-death 1342)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance RENE-GIRARD person
((is-identified-by "Rene Girard")
 (has-gender male)
 (has-date-of-birth 1923)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance WILFRID-SELLARS person
((is-identified-by "Wilfrid Sellars")
 (has-gender male)
 (has-date-of-birth 1912)
 (has-date-of-death 1989)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GILBERT-RYLE person
((is-identified-by "Gilbert Ryle")
 (has-gender male)
 (has-date-of-birth 1900)
 (has-date-of-death 1976)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ROBERT-FILMER person
((is-identified-by "Robert Filmer")
 (has-gender male)
 (has-date-of-birth 1588)
 (has-date-of-death 1653)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance NOAM-CHOMSKY person
((is-identified-by "Noam Chomsky")
 (has-gender male)
 (has-date-of-birth 1928)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SOJOURNER-TRUTH person
((is-identified-by "Sojourner Truth")
 (has-gender male)
 (has-date-of-birth 1797)
 (has-date-of-death 1883)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOHN-WYCLIFFE person
((is-identified-by "John Wycliffe")
 (has-gender male)
 (has-date-of-birth 1320)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance A-O-LOVEJOY person
((is-identified-by "A.O. Lovejoy")
 (has-gender male)
 (has-date-of-birth 1873)
 (has-date-of-death 1962)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ANAXAGORAS person
((is-identified-by "Anaxagoras")
 (has-gender male)
 (has-date-of-birth -500)
 (has-date-of-death -428)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MOSES-MENDELSSOHN person
((is-identified-by "Moses Mendelssohn")
 (has-gender male)
 (has-date-of-birth 1729)
 (has-date-of-death 1786)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOHN-SEARLE person
((is-identified-by "John Searle")
 (has-gender male)
 (has-date-of-birth 1932)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GEORGE-BERKELEY person
((is-identified-by "George Berkeley")
 (has-gender male)
 (has-date-of-birth 1685)
 (has-date-of-death 1753)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOSIAH-ROYCE person
((is-identified-by "Josiah Royce")
 (has-gender male)
 (has-date-of-birth 1855)
 (has-date-of-death 1916)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance CHARLES-BUTTERWORTH person
((is-identified-by "Charles Butterworth")
 (has-gender male)
 (has-date-of-birth 1938)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance LEUCIPPUS person
((is-identified-by "Leucippus")
 (has-gender male)
 (has-date-of-birth -450)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HANS-GEORG-GADAMER person
((is-identified-by "Hans-Georg Gadamer")
 (has-gender male)
 (has-date-of-birth 1900)
 (has-date-of-death 2002)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JEAN-PAUL-SARTRE person
((is-identified-by "Jean-Paul Sartre")
 (has-gender male)
 (has-date-of-birth 1905)
 (has-date-of-death 1980)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance PIERRE-DE-FERMAT person
((is-identified-by "Pierre de Fermat")
 (has-gender male)
 (has-date-of-birth 1601)
 (has-date-of-death 1665)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HENRY-DAVID-THOREAU person
((is-identified-by "Henry David Thoreau")
 (has-gender male)
 (has-date-of-birth 1817)
 (has-date-of-death 1862)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance DAVID-CHALMERS person
((is-identified-by "David Chalmers")
 (has-gender male)
 (has-date-of-birth 1966)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MEISTER-ECKHART person
((is-identified-by "Meister Eckhart")
 (has-gender male)
 (has-date-of-birth 1260)
 (has-date-of-death 1328)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GEORGE-SANTAYANA person
((is-identified-by "George Santayana")
 (has-gender male)
 (has-date-of-birth 1863)
 (has-date-of-death 1952)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HIPPIAS person
((is-identified-by "Hippias")
 (has-gender male)
 (has-date-of-birth -450)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOHN-RAWLS person
((is-identified-by "John Rawls")
 (has-gender male)
 (has-date-of-birth 1921)
 (has-date-of-death 2002)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JEREMY-BENTHAM person
((is-identified-by "Jeremy Bentham")
 (has-gender male)
 (has-date-of-birth 1748)
 (has-date-of-death 1832)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GOTTFRIED-LEIBNIZ person
((is-identified-by "Gottfried Leibniz")
 (has-gender male)
 (has-date-of-birth 1646)
 (has-date-of-death 1716)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance WILLIAM-JAMES person
((is-identified-by "William James")
 (has-gender male)
 (has-date-of-birth 1842)
 (has-date-of-death 1910)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MARIO-BUNGE person
((is-identified-by "Mario Bunge")
 (has-gender male)
 (has-date-of-birth 1919)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance EMPEDOCLES person
((is-identified-by "Empedocles")
 (has-gender male)
 (has-date-of-birth -490)
 (has-date-of-death -430)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance HILARY-PUTNAM person
((is-identified-by "Hilary Putnam")
 (has-gender male)
 (has-date-of-birth 1926)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MICHEL-FOUCAULT person
((is-identified-by "Michel Foucault")
 (has-gender male)
 (has-date-of-birth 1926)
 (has-date-of-death 1984)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ERNEST-ADDISON-MOODY person
((is-identified-by "Ernest Addison Moody")
 (has-gender male)
 (has-date-of-birth 1903)
 (has-date-of-death 1975)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance RENÉ-DESCARTES person
((is-identified-by "René Descartes")
 (has-gender male)
 (has-date-of-birth 1596)
 (has-date-of-death 1650)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SØREN-KIERKEGAARD person
((is-identified-by "Søren Kierkegaard")
 (has-gender male)
 (has-date-of-birth 1813)
 (has-date-of-death 1855)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance C.-D.-BROAD person
((is-identified-by "C. D. Broad")
 (has-gender male)
 (has-date-of-birth 1887)
 (has-date-of-death 1971)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance DUNS-SCOTUS person
((is-identified-by "Duns Scotus")
 (has-gender male)
 (has-date-of-birth 1266)
 (has-date-of-death 1308)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MELISSUS-OF-SAMOS person
((is-identified-by "Melissus of Samos")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GEORG-LUKÁCS person
((is-identified-by "Georg Lukács")
 (has-gender male)
 (has-date-of-birth 1885)
 (has-date-of-death 1971)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MARY-WOLLSTONECRAFT person
((is-identified-by "Mary Wollstonecraft")
 (has-gender male)
 (has-date-of-birth 1759)
 (has-date-of-death 1797)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JOHN-NORRIS person
((is-identified-by "John Norris")
 (has-gender male)
 (has-date-of-birth 1657)
 (has-date-of-death 1711)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ÉMILE-DURKHEIM person
((is-identified-by "Émile Durkheim")
 (has-gender male)
 (has-date-of-birth 1858)
 (has-date-of-death 1917)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance SIMON-BLACKBURN person
((is-identified-by "Simon Blackburn")
 (has-gender male)
 (has-date-of-birth 1944)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance BOETIUS-OF-DACIA person
((is-identified-by "Boetius of Dacia")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance GEORGE-POLYA person
((is-identified-by "George Polya")
 (has-gender male)
 (has-date-of-birth 1887)
 (has-date-of-death 1985)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance JACQUES-DERRIDA person
((is-identified-by "Jacques Derrida")
 (has-gender male)
 (has-date-of-birth 1930)
 (has-date-of-death 2004)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance QUEEN-KRISTINA person
((is-identified-by "Queen Kristina")
 (has-gender male)
 (has-date-of-birth 1626)
 (has-date-of-death 1689)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance KARL-POPPER person
((is-identified-by "Karl Popper")
 (has-gender male)
 (has-date-of-birth )
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance MARGARET-FULLER person
((is-identified-by "Margaret Fuller")
 (has-gender male)
 (has-date-of-birth 1810)
 (has-date-of-death 1850)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ZENO person
((is-identified-by "Zeno")
 (has-gender male)
 (has-date-of-birth -490)
 (has-date-of-death -430)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance C-D-BROAD person
((is-identified-by "C. D. Broad")
 (has-gender male)
 (has-date-of-birth 1887)
 (has-date-of-death 1971)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ALVIN-PLANTINGA person
((is-identified-by "Alvin Plantinga")
 (has-gender male)
 (has-date-of-birth 1932)
 (has-date-of-death )
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance ANTHONY-ASHLEY-COOPER person
((is-identified-by "Anthony Ashley-Cooper 3rd Earl of Shaftesbury")
 (has-gender male)
 (has-date-of-birth 1671)
 (has-date-of-death 1713)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))

(def-instance IMMANUEL-KANT person
((is-identified-by "Immanuel Kant")
 (has-gender male)
 (has-date-of-birth 1724)
 (has-date-of-death 1804)
 (has-birth-place  ) 
 (has-death-place   )
 (has-social-role philosopher)))
                       
