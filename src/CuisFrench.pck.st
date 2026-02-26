'From Cuis7.7 [latest update: #7840] on 26 February 2026 at 10:28:46 am'!
'Description '!
!provides: 'CuisFrench' 1 3!
SystemOrganization addCategory: #CuisFrench!


!classDefinition: #Couleur category: #CuisFrench!
Color variableWordSubclass: #Couleur
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CuisFrench'!
!classDefinition: 'Couleur class' category: #CuisFrench!
Couleur class
	instanceVariableNames: ''!


!Couleur class methodsFor: 'named colors' stamp: 'hlsf 26/Oct/2025 11:50:21'!
blanc
	^ self white! !

!Couleur class methodsFor: 'named colors' stamp: 'hlsf 26/Oct/2025 11:46:45'!
bleu
	^ self blue! !

!Couleur class methodsFor: 'named colors' stamp: 'hlsf 26/Oct/2025 11:50:29'!
gris
	^ self gray! !

!Couleur class methodsFor: 'named colors' stamp: 'hlsf 26/Oct/2025 11:49:56'!
jaune
	^ self yellow! !

!Couleur class methodsFor: 'named colors' stamp: 'hlsf 26/Oct/2025 11:47:42'!
marron
	^ self brown ! !

!Couleur class methodsFor: 'named colors' stamp: 'hlsf 26/Oct/2025 11:50:36'!
noir
	^ self black! !

!Couleur class methodsFor: 'named colors' stamp: 'hlsf 29/Jan/2026 11:00:48'!
pourpre
	^ self purple ! !

!Couleur class methodsFor: 'named colors' stamp: 'hlsf 26/Oct/2025 11:48:16'!
rose
	^ self pink! !

!Couleur class methodsFor: 'named colors' stamp: 'hlsf 26/Oct/2025 11:45:30'!
rouge
	^ self red! !

!Couleur class methodsFor: 'named colors' stamp: 'hlsf 26/Oct/2025 11:48:00'!
vert
	^ self green! !

!Couleur class methodsFor: 'named colors' stamp: 'hlsf 26/Oct/2025 12:03:24'!
white
	^ self white! !

!Object methodsFor: '*CuisFrench' stamp: 'hlsf 26/Dec/2022 16:31:23'!
afficher
	self print! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
ajouter: unObjet

	^self add: unObjet.! !

!Collection methodsFor: '*CuisFrench' stamp: 'hlsf 26/Dec/2022 16:32:43'!
ajouter: unObjet fois: unEntier

	unEntier foisRépéter: [self ajouter: unObjet].! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
ajouterSiAbsent: unObjet

	^self addIfNotPresent: unObjet.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
ajouterTout: uneCollection

	^self addAll: uneCollection.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
arrondir

	^self rounded.! !

!Collection methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:43:09'!
auCarré

	^self squared.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
auHasard

	^self atRandom.! !

!Collection methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:43:21'!
aucunNeVérifie: unBloc

	^self noneSatisfy: unBloc.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
choisir: unBloc
	
	^self select: unBloc.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
choisir: bloc puisFaire: unBloc
	
	^self select: bloc thenDo: unBloc.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
collecter: unBloc
	
	^self collect: unBloc.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
collecter: unBloc dans: uneCollection
	
	^self collect: unBloc into: uneCollection.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
collecter: unBloc puisChoisir: critere
	^self collect: unBloc thenSelect: critere.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
collecter: unBloc puisFaire: autreBloc
	
	^self collect: unBloc thenDo: autreBloc.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
compter: unBloc
	
	^self count: unBloc.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
contient: unObjet
	
	^(self includes: unObjet).! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
cosinus
	
	^self degreeCos.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
effectifs
	"construit une table d'effectifs"

	| table cles |
	table _ Dictionary new.
	cles _ self asSet.
	cles do: [ :n | table at: n put: (self count: [ :t | t=n])].
	^table.! !

!Collection methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:45:02'!
effectifsEnClasses: unEntier
	"construit une table pour histogramme"

	| table cles h |
	h _ self étendue / unEntier.
	table _ Dictionary new.
	cles _ self min to: (self max - 1.0e-6) by: h.
	cles do: [ :n | table at: n put: (self count: [ :t | (t>=n) and: [t<(n+h)]])].
	^table.! !

!Collection methodsFor: '*CuisFrench' stamp: 'hlsf 26/Oct/2025 11:57:34'!
enCollectionOrdonnée

	^self asOrderedCollection.! !

!Collection methodsFor: '*CuisFrench' stamp: 'hlsf 26/Oct/2025 11:57:52'!
enCollectionTriée

	^self asSortedCollection.! !

!Collection methodsFor: '*CuisFrench' stamp: 'hlsf 26/Oct/2025 11:57:59'!
enDictionnaire

	^self asDictionary.! !

!Collection methodsFor: '*CuisFrench' stamp: 'hlsf 26/Oct/2025 11:58:07'!
enEnsemble

	^self asSet.! !

!Collection methodsFor: '*CuisFrench' stamp: 'hlsf 26/Oct/2025 11:58:23'!
enSac

	^self asBag.! !

!Collection methodsFor: '*CuisFrench' stamp: 'hlsf 26/Oct/2025 11:58:39'!
enTableau

	^self asArray.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
estVide

	^self isEmpty.! !

!Collection methodsFor: '*CuisFrench' stamp: 'hlsf 26/Oct/2025 11:58:23'!
échantillonDeTaille: unEntier 

	"tirage au hasard sans remise"
	| copie ech t n |
	n _ unEntier min: (self taille).
	n _ n max: 0.
	copie _ self collecter: [ :x | x ].
	ech _ #() enSac.
	n foisRépéter: [ 
		t _ copie auHasard.
		ech ajouter: t.
		copie retirer: t.
		 ].
	^ech.! !

!Collection methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:45:02'!
étendue

	^self range.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
faire: unBloc
	
	^self do: unBloc.! !

!Collection methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:45:12'!
fréquences
	"construit une table de fréquences"

	| table cles total |
	total _ self size.
	table _ Dictionary new.
	cles _ self asSet.
	cles do: [ :n | table at: n put: ((self count: [ :t | t=n])/total)].
	^table.! !

!Collection methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:45:22'!
fréquencesEnClasses: unEntier
	"construit une table pour histogramme"

	| table cles h total |
	total _ self size.
	h _ self étendue / unEntier.
	table _ Dictionary new.
	cles _ self min to: (self max - 0.000001) by: h.
	cles do: [ :n | table at: n put: ((self count: [ :t | (t>=n) and: [t<(n+h)]])/total)].
	^table.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
grouperPar: unBloc

	^self groupedBy: unBloc.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
grouperPar: unBloc lorsque: condition

	^self groupedBy: unBloc having: condition.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
injecter: valeur dans: unBloc

	^self inject: valeur into: unBloc.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
inter: uneCollection
	
	^self intersection: uneCollection.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
inverses

	^self reciprocal.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
moyenne

	^self average.! !

!Collection methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:46:24'!
opposés

	^self negated.! !

!Collection methodsFor: '*CuisFrench' stamp: 'hlsf 26/Oct/2025 11:57:52'!
premierQuartile

	^(self enCollectionTriée Q1).! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
puissances: unExposant

	^self raisedTo: unExposant.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
racines

	^self sqrt.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
regrouper: unBloc
	
	^self gather: unBloc.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
rejeter: unBloc
	
	^self reject: unBloc.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
rejeter: bloc puisFaire: unBloc
	
	^self reject: bloc thenDo: unBloc.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
retirer: unBloc

	^self remove: unBloc.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
retirerTousLorsque: unBloc

	^self removeAllSuchThat: unBloc.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
retirerTout

	^self removeAll.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
retirerToutDans: uneCollection

	^self removeAll: uneCollection.! !

!Collection methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:47:22'!
réduire: unBloc

	^self reduce: unBloc.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
sinus
	
	^self degreeSin.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
somme

	^self sum.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
taille

	^self size.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
total

	^self sum.! !

!Collection methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:47:01'!
tousVérifient: unBloc

	^self allSatisfy: unBloc.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
trier
	
	^self sorted.! !

!Collection methodsFor: '*CuisFrench' stamp: ''!
trierSelon: unBloc
	
	^self sorted: unBloc.! !

!Collection methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:46:38'!
unVérifie: unBloc

	^self anySatisfy: unBloc.! !

!Array methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:48:38'!
à: unIndice
	
	^self at: unIndice.! !

!Array methodsFor: '*CuisFrench' stamp: 'hlsf 26/Dec/2022 16:36:03'!
à: unIndice mettre: unObjet
	
	^self at: unIndice put: unObjet.! !

!String methodsFor: '*CuisFrench' stamp: ''!
contient: unString
	^self includesSubString: unString! !

!String methodsFor: '*CuisFrench' stamp: ''!
correspond: unTexte
"
'toute*' correspond: 'Toute' -> true
'toute#' correspond: 'Toute' -> false
'toute#' correspond: 'Toutete' -> false
'toute*' correspond: 'Toutete' -> true
'toute#' correspond: 'Toutes' -> true
"	
	^self match: unTexte! !

!String methodsFor: '*CuisFrench' stamp: ''!
enMajuscule
	^self asUppercase! !

!String methodsFor: '*CuisFrench' stamp: ''!
enMinuscule
	^self asLowercase! !

!String methodsFor: '*CuisFrench' stamp: 'hlsf 26/Oct/2025 11:59:27'!
enNombre
	^ self asNumber! !

!String methodsFor: '*CuisFrench' stamp: 'hlsf 26/Dec/2022 16:34:29'!
formater: uneCollection
	^ self format: uneCollection! !

!String methodsFor: '*CuisFrench' stamp: ''!
lettrine
	^self capitalized! !

!BlockClosure methodsFor: '*CuisFrench' stamp: ''!
de: unArgument
	
	^self value: unArgument.! !

!BlockClosure methodsFor: '*CuisFrench' stamp: ''!
de: unArgument de: unAutre
	
	^self value: unArgument value: unAutre.! !

!BlockClosure methodsFor: '*CuisFrench' stamp: ''!
de: unArgument de: unAutre de: unTroisieme
	^self value: unArgument value: unAutre value: unTroisieme.! !

!BlockClosure methodsFor: '*CuisFrench' stamp: 'hlsf 3/Jan/2024 11:05:57'!
de: unArgument de: unAutre de: unTroisieme de: unQuatrieme
	^self value: unArgument value: unAutre value: unTroisieme value: unQuatrieme .! !

!BlockClosure methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:42:27'!
jusquàVrai: unBloc

	^self whileFalse: unBloc.! !

!BlockClosure methodsFor: '*CuisFrench' stamp: ''!
tantQueFaux: unBloc

	^self whileFalse: unBloc.! !

!BlockClosure methodsFor: '*CuisFrench' stamp: ''!
tantQueVrai: unBloc

	^self whileTrue: unBloc.! !

!BlockClosure methodsFor: '*CuisFrench' stamp: ''!
tempsPourFaire
	
	^self timeToRun.! !

!BlockClosure methodsFor: '*CuisFrench' stamp: ''!
valeur
	
	^self value.! !

!BlockClosure methodsFor: '*CuisFrench' stamp: ''!
valeur: unArgument
	
	^self value: unArgument.! !

!BlockClosure methodsFor: '*CuisFrench' stamp: ''!
valeur: unArgument valeur: unAutre
	
	^self value: unArgument value: unAutre.! !

!BlockClosure methodsFor: '*CuisFrench' stamp: ''!
valeur: unArgument valeur: unAutre valeur: unTroisieme	
	^self value: unArgument value: unAutre value: unTroisieme.! !

!BlockClosure methodsFor: '*CuisFrench' stamp: 'hlsf 3/Jan/2024 11:06:08'!
valeur: unArgument valeur: unAutre valeur: unTroisieme	 valeur: unQuatrieme
	^self value: unArgument value: unAutre value: unTroisieme value: unQuatrieme .! !

!Boolean methodsFor: '*CuisFrench' stamp: ''!
contraire
	"négation booléenne"
	
	^self not.! !

!Boolean methodsFor: '*CuisFrench' stamp: ''!
et: UnBloc
	"et au lieu de and"

	^self and: UnBloc.! !

!Boolean methodsFor: '*CuisFrench' stamp: ''!
ou: UnBloc
	"ou au lieu de or"

	^self or: UnBloc.! !

!Boolean methodsFor: '*CuisFrench' stamp: ''!
siFaux: UnBloc
	"test négatif"

	^self ifFalse: UnBloc.! !

!Boolean methodsFor: '*CuisFrench' stamp: ''!
siFaux: leBlocDuFaux siVrai: leBlocDuVrai
	"test alternatif"

	^self ifFalse: leBlocDuFaux ifTrue: leBlocDuVrai.! !

!Boolean methodsFor: '*CuisFrench' stamp: ''!
siVrai: UnBloc
	"test positif"

	^self ifTrue: UnBloc.! !

!Boolean methodsFor: '*CuisFrench' stamp: ''!
siVrai: leBlocDuVrai siFaux: leBlocDuFaux
	"test alternatif"

	^self ifTrue: leBlocDuVrai ifFalse: leBlocDuFaux.! !

!Number methodsFor: '*CuisFrench' stamp: 'hlsf 26/Dec/2022 16:29:20'!
afficherEnBase: UneBase

	^self printStringBase: UneBase.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
arrondir
"répond l'arrondi à l'entier le plus proche"
	^self rounded! !

!Number methodsFor: '*CuisFrench' stamp: ''!
arrondirA: UnNombre
"répond l'arrondi à UnNombre près.
Par exemple 2 racine arrondirA:  0.01 répond 1.41"

	^self roundTo: UnNombre .! !

!Number methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:49:40'!
arrondirParDéfautA: UnNombre
"répond l'arrondi par défaut;
par exemple, 2 racine arrondirExcesA: 0.01 répond 1.41"
	
	^self roundDownTo: UnNombre! !

!Number methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:50:39'!
arrondirParExcèsA: UnNombre
"répond l'arrondi à l'excès;
par exemple, 2 racine arrondirExcesA: 0.01 répond 1.42"
	^self roundUpTo: UnNombre! !

!Number methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:43:09'!
auCarré

	^self squared.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
auCube

	^self puissance: 3.! !

!Number methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:48:38'!
à: UnNombre

	^self to: UnNombre.! !

!Number methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:48:53'!
à: UnNombre faire: UnBloc
	"boucle à condition de sortie"

	^self to: UnNombre do: UnBloc.! !

!Number methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:48:59'!
à: UnNombre par: UnPas
"répond un intervalle avec un pas"
	^self to: UnNombre by: UnPas.! !

!Number methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:49:09'!
à: UnNombre par: UnPas faire: UnBloc

	^self to: UnNombre by: UnPas do: UnBloc.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
cosinus
	"cosinus en degrés"
	
	^self degreeCos.! !

!Number methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:52:37'!
degrés

	^self radiansToDegrees.! !

!Number methodsFor: '*CuisFrench' stamp: 'hlsf 26/Oct/2025 11:58:58'!
enDécimal

	^self asFloat.! !

!Number methodsFor: '*CuisFrench' stamp: 'hlsf 26/Oct/2025 11:59:08'!
enEntier

	^self asInteger.! !

!Number methodsFor: '*CuisFrench' stamp: 'hlsf 26/Oct/2025 11:59:27'!
enNombre

	^self asNumber.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
enPourcents
	^ String streamContents: [ :str | 
			(self * 100) storeOn: str.
			str nextPutAll: ' %'].! !

!Number methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:53:03'!
estDécimal

	^(self isFloat).! !

!Number methodsFor: '*CuisFrench' stamp: ''!
estDivisiblePar: UnNombre

	^self isDivisibleBy: UnNombre.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
estEntier

	^(self isInteger).! !

!Number methodsFor: '*CuisFrench' stamp: ''!
estInfini

	^self isInfinite.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
estNombre

	^self isNumber.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
estNul

	^self isZero.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
estPasNombre

	^self isNaN.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
heures

	^self hours.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
impair
	
	^self odd.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
inverse

	^self reciprocal.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
jours

	^self days.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
millisecondes

	^self milliSeconds.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
moyenneAvec: unNombre
	
	^((self + unNombre)/2).! !

!Number methodsFor: '*CuisFrench' stamp: ''!
nanosecondes

	^self nanoSeconds.! !

!Number methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:53:25'!
négatif
	
	^self negative.! !

!Number methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:53:33'!
opposé

	^self negated.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
pair
	
	^self even.! !

!Number methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:53:48'!
partieDécimale
	^self fractionPart! !

!Number methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:54:01'!
partieEntière
	^self integerPart! !

!Number methodsFor: '*CuisFrench' stamp: ''!
positif
	
	^self positive.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
pourcentsDe: UnNombre
	"répond un pourcentage.
	Par exemple 6 pourcentsDe: 200 répond 12"

	^self * UnNombre / 100.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
procheDe: UnNombre

	^self closeTo: UnNombre.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
puissance: UnNombre

	^self raisedTo: UnNombre.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
racine

	^self sqrt.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
racineCubique
	^self nthRoot: 3! !

!Number methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:54:15'!
racineNième: unEntier
	^self nthRoot: unEntier.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
radians
	
	^self degreesToRadians.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
reste: UnNombre
	^self rem: UnNombre! !

!Number methodsFor: '*CuisFrench' stamp: ''!
secondes

	^self seconds.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
semaines

	^self weeks.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
signe
	
	^self sign.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
sinus
	"sinus en degrés"
	
	^self degreeSin.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
strictementPositif

	^self strictlyPositive.! !

!Number methodsFor: '*CuisFrench' stamp: ''!
tangente
	"tangente en degrés"
	
	^(self sinus / (self cosinus)).! !

!Number methodsFor: '*CuisFrench' stamp: ''!
tronquer
	^self floor! !

!Number methodsFor: '*CuisFrench' stamp: ''!
tronquerA: UnNombre
"affiche le nombre tronqué à UnNombre près.
Par exemple, 2 racine tronquerA: 0.01 renvoie 1.41"
	^ self truncateTo: UnNombre! !

!Float methodsFor: '*CuisFrench' stamp: 'hlsf 26/Feb/2026 10:25:39'!
enFraction

	^self asApproximateFraction.! !

!Float methodsFor: '*CuisFrench' stamp: 'hlsf 26/Oct/2025 11:59:52'!
enVraieFraction

	^self asTrueFraction.! !

!Fraction methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:54:01'!
aLancienne
	"répond la fraction à l'ancienne, avec partie entière"

	| a b |
	a _ self partieEntière.
	b _ self partieDécimale.
	^(a asString),'+',(b asString).! !

!Fraction methodsFor: '*CuisFrench' stamp: 'hlsf 26/Oct/2025 11:58:39'!
aLegyptienne
	"répond la fraction comme somme de fractions égyptiennes
	soit de numérateurs 1;
	algorithme de Fibonacci-Sylvester"

	| liste b c chaine |
	liste _ #() enCollectionOrdonnée.
	liste ajouter: self partieEntière.
	b _ self partieDécimale.
	[b numérateur > 1] tantQueVrai: [
		c _ (b inverse partieEntière + 1) inverse.
		b _ b-c.
		liste ajouter: c.
	].
	liste ajouter: b.
	chaine _ (liste enTableau à: 1) asString.
	liste _ liste retirerTousLorsque: [ :n | n isInteger].
	liste _ liste enTableau.
	liste faire: [ :elt | chaine _ chaine,' + ',(elt asString)].
	
	^chaine.! !

!Fraction methodsFor: '*CuisFrench' stamp: ''!
de: unNombre

	^self * unNombre.! !

!Fraction methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:31:40'!
dénominateur

	^self denominator.! !

!Fraction methodsFor: '*CuisFrench' stamp: 'hlsf 26/Oct/2025 12:00:05'!
enPari
	"répond la fraction comme probabilité"

	| c |
	c _ self numérateur asString.
	(self numérateur < 2) siVrai: [
		c _ c,' chance contre '.
		] siFaux:[
		c _ c,' chances contre '.
		].
	c _ c,(self dénominateur - self numérateur) asString.
	^c! !

!Fraction methodsFor: '*CuisFrench' stamp: 'hlsf 26/Oct/2025 12:00:37'!
enProba
	"répond la fraction comme probabilité"

	| c |
	c _ self numérateur asString.
	(self numérateur < 2) siVrai: [
		c _ c,' chance sur '.
		] siFaux:[
		c _ c,' chances sur '.
		].
	c _ c,self dénominateur asString.
	^c! !

!Fraction methodsFor: '*CuisFrench' stamp: ''!
estUnePuissanceDe2

	^self isPowerOfTwo.! !

!Fraction methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:32:14'!
numérateur

	^self numerator.! !

!Fraction methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:30:42'!
réduite

	^self reduced.! !

!Integer methodsFor: '*CuisFrench' stamp: ''!
auHasard

	^self atRandom.! !

!Integer methodsFor: '*CuisFrench' stamp: ''!
diviseurs
"diviseurs du nombre placés dans une collection" 
	^ (Array streamContents: [:str |
		1 to: self sqrtFloor do: [ :i | 
			(self rem: i) = 0 ifTrue: [ str nextPut: i; nextPut: self // i ]]]) asSet sorted! !

!Integer methodsFor: '*CuisFrench' stamp: ''!
enChiffresRomains

	^self printStringRoman.! !

!Integer methodsFor: '*CuisFrench' stamp: 'hlsf 26/Oct/2025 11:59:36'!
enFraction

	^self asFraction.! !

!Integer methodsFor: '*CuisFrench' stamp: ''!
estDivisiblePar: unEntier

	^(self \\ unEntier) =0.! !

!Integer methodsFor: '*CuisFrench' stamp: ''!
estPremier

	^self isPrime.! !

!Integer methodsFor: '*CuisFrench' stamp: ''!
estPremierAvec: unEntier

	^(self pgdc: unEntier) = 1.! !

!Integer methodsFor: '*CuisFrench' stamp: ''!
estProbablementPremier

	^self isProbablyPrime.! !

!Integer methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:43:09'!
estUnCarré
	
	^(self auCarré estEntier).! !

!Integer methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:38:39'!
facteursPremiers
	^ Integer primesUpTo: self! !

!Integer methodsFor: '*CuisFrench' stamp: ''!
factorielle

	^self factorial.! !

!Integer methodsFor: '*CuisFrench' stamp: 'hlsf 26/Dec/2022 16:32:43'!
foisRépéter: unBloc

	^self timesRepeat: unBloc.! !

!Integer methodsFor: '*CuisFrench' stamp: ''!
multiples: n
"Answer my first n multiple"
	^ Array streamContents: [:str |
		1 to: n do: [ :i | str nextPut: i * self ]]! !

!Integer methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:41:26'!
nombreDeChiffres

	^self numberOfDigitsInBase: 10! !

!Integer methodsFor: '*CuisFrench' stamp: ''!
nombreDeChiffresEnBase: uneBase

	^self numberOfDigitsInBase: uneBase.! !

!Integer methodsFor: '*CuisFrench' stamp: ''!
pgdc: unEntier

	^self gcd: unEntier.! !

!Integer methodsFor: '*CuisFrench' stamp: ''!
ppmc: unEntier

	^self lcm: unEntier.! !

!Integer methodsFor: '*CuisFrench' stamp: 'hlsf 21/Dec/2022 14:33:59'!
précèdent
	"décrémente un entier"

	^self - 1.! !

!Integer methodsFor: '*CuisFrench' stamp: ''!
suivant
	"incrémente un entier"

	^self + 1.! !

!Color methodsFor: '*CuisFrench' stamp: 'hlsf 29/Jan/2026 11:24:05'!
éclaircir
	^ self lighter ! !

!Color methodsFor: '*CuisFrench' stamp: 'hlsf 29/Jan/2026 11:24:53'!
foncer
	^ self darker! !

!Transcript class methodsFor: '*CuisFrench' stamp: 'hlsf 26/Dec/2022 16:36:20'!
afficher: unObjet
	^ self show: unObjet; newLine ! !

!Transcript class methodsFor: '*CuisFrench' stamp: 'hlsf 26/Dec/2022 16:37:07'!
effacer
	^self clear.! !

!Transcript class methodsFor: '*CuisFrench' stamp: 'hlsf 28/Sep/2022 17:55:34'!
espace
	^self space! !

!Transcript class methodsFor: '*CuisFrench' stamp: 'hlsf 26/Dec/2022 16:37:13'!
montrer: unObjet
	^self show: unObjet! !

!Transcript class methodsFor: '*CuisFrench' stamp: 'hlsf 28/Sep/2022 17:55:42'!
retourLigne
	^ self cr! !
