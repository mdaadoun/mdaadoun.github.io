# Cours de graphisme informatique (infographie) avec Ravi Ramamoorthi

## Chapitre 1: Objectifs de ce cours : 
1. Apprendre à écrire des programme 3D complexes comme par exemple un visualisateur de scene 3D ou un traceur de rayon (ray tracing).
2. Comprendre théoriquement les mathématiques et les algorithmes sur lesquels se reposent l'informatique graphique.

### Les outils que nous utiliserons :
* OpenGL et son langage le GLSL (Opengl Shading Language).
* Le language de programmation c ou c++ sous linux.

### Pourquoi étudier le graphisme informatique ?
En dehors du défi intellectuel que cela apporte, le graphisme a une trés large application dans la production visuelle.

* cinéma, jeux vidéos, simulations de lumières, visualization (scientifique, médicale), réalité virtuelle et tout les médias visuel aujourd'hui sont infusé par l'infographie.

### Le défi intellectuel :
* Comment créer et interagir avec un monde virtuel réaliste ?
* Nécessité de comprendre tout les aspects du monde physique.
* L'importance de comprendre les méthodes, les différents types d'affichage, les nouvelles technologies.

### Le défi technique : 
* Comprendre les maths qui permettent l'affichage, les projections pour obtenir un perspective, les courbes et les surface.
* Comprendre la physique de la lumière et de l'ombre.
* Comprendre les outils matériel et logiciels pour permettre l'affichage graphique.

* [source chapitre](https://www.youtube.com/watch?v=CJ482b9r_0g&list=PL593181A285D7EBE8)

---

## Chapitre 2: Aperçu général du cours

Ce cours souhaite vous donner une connaissance basique sur la création d'image en utilisant deux méthodes de rendu, la rastérisation et le raytracing.

### La pipeline 3D

Les trois stages de la pipeline sont :
* la modélisation : le processus de créasiont de models géométrique
* l'animation : le déplacement d'un objet
* le rendu : simulation de la lumière et ombre pour afficher l'objet

### Les trois projets

* 1.Un visualisateur d'objet 3D (teapot)
* 2.Un visualisateur de scene (lumière et ombres)
* 3.Un traceur de rayon (raytracing)

Nous distinguerons 2 méthodes de rendu, la rastérisation (projet 2) et le raytracing (projet 3).

* La rastérisation détermine la position sur l'écran des primitives géométriques. 
* A l'inverse, le ray casting part de chaque pixel de l'écran pour déterminer quel primitive géométrique il est associé. 

La rastérisation est plus rapide à calculer que le raytracing, mais ce dernier a un rendu de meilleur qualité.

### La charge de travail

* 3 projets de programmation qui demande beaucoup de temps.
* Les concepts mathématiques et géométrique doivent etre compris, ils seront testé.
* C/C++ ou Java doit etre bien compris.
* L'algebre linaire doit etre bien compris.

* [source chapitre](https://www.youtube.com/watch?v=M1jxGJWET-Y&list=PL593181A285D7EBE8&index=2)

---

## Chapitre 3: Une brève histoire de l'infographie

* Le terme infographie (computer graphics) à été employé la premiere fois en 1960 par William Fetter
* Les premiers systeme graphiques ont été développé au milieu des années 50 au MIT pour l'armée américaine.
* Le simple passage de l'affichage LED au texte est une étape importante dans le développement du graphisme informatique.
* https://www.youtube.com/watch?v=yJDv-zdhzMY la démo de 1968
* Ensuite à été inventé au Xerox PARC les interface graphiques autour de 1975 (Apple Macintosh ou Microsoft Windows se sont appuyé sur cette invention).
* Le dessin assisté par informatique commence en 1963 avec Sketchpad de Ivan Sutherland qui obtient aussi le premier doctorat sur l'infographie.
* https://www.youtube.com/watch?v=6orsmFndx_o
* Le SuperPaint system développé en 1973 au PARC ouvre le chemin pour des logiciel de traitement d'image (photoshop).
    * Le traitement d'image est maintenant utilisé en permanence (modifications d'images par informatique)
* La fameuse Théière utilisé en 3D à été modèlisé en 1975 à l'université d'Utah.
    * https://fr.wikipedia.org/wiki/Th%C3%A9i%C3%A8re_de_l%27Utah

### Le rendu 3D

#### Problématique dans les années 60 de l'élimination des lignes cachées
* L'algorithme de suppression de lignes cachés par Roberts en 1963 et Appel en 1967 
    * https://en.wikipedia.org/wiki/Hidden-line_removal
* L'algorithme des surfaces cachées par Warnock en 1969 et Watkins en 1970
    * https://en.wikipedia.org/wiki/Hidden-surface_determination
    * https://en.wikipedia.org/wiki/Painter%27s_algorithm
* Le tri de visibilité par sutherland en 1974

#### Problématique dans les années 70 de la luminosité sur les formes géométrique
* L'ombrage de gouraud en 1971
    * https://en.wikipedia.org/wiki/Gouraud_shading
* La Lumière spéculaire et l'ombrage de phong en 1974
    * https://fr.wikipedia.org/wiki/Lumi%C3%A8re_sp%C3%A9culaire
    * https://en.wikipedia.org/wiki/Phong_shading
* Travail sur les surfaces courbe et textures de Jim Blinn en 1974
    * https://en.wikipedia.org/wiki/Blinn%E2%80%93Phong_reflection_model
* Et en 1974 Ed Catmull présenta la méthode z-buffer (ou tampon de profondeur) pour les surfaces cachées.
    * https://en.wikipedia.org/wiki/Z-buffering

#### Problématique du rendu l'illumination globale dans les années 80 et 90

* https://en.wikipedia.org/wiki/Global_illumination

* Premier algorithme récursif de ray tracing en 1980 par Turner Whitted
    * https://en.wikipedia.org/wiki/Ray_tracing_(graphics)
* En 1984, la radiosité (radiance) est définie (Boite de cornell).
    * https://en.wikipedia.org/wiki/Radiosity_(computer_graphics)
* En 1986, Kajiya introduit l'équation de rendu.
    * https://en.wikipedia.org/wiki/Rendering_equation
* Fiat Lux
* https://www.youtube.com/watch?v=zqHJjoyy8AY

* History :
    * [part 1](https://www.youtube.com/watch?v=LzZwiLUVaKg)
    * [part 2](https://www.youtube.com/watch?v=S3hqS6JlKEc)

* [source chapitre](https://www.youtube.com/watch?v=HD_59nFVzkU&list=PL593181A285D7EBE8&index=3)

---

## Chapitre 4: Vecteur et produit scalaire

> De nombreux concepts en informatique graphique nécessite une base mathématique tel que l'algèbre linéaire.

* Nous regarderons comment fonctionne les vecteurs (produits scalaires, produit vectoriel), les matrices (multiplication entre deux matrices et entre une matrice et un vecteur) qui seront important pour, par exemple, déplacer ou faire une rotation un objet dans un espace.

### Les vecteurs

* On écrit généralement un vecteur :

$$
\overrightarrow{a}
$$

* Et sa magnitude :
$$
\lVert
a
\rVert
$$

Les vecteur servent à stocker des déplacements, des localisations qui seront mutiplié à des matrices.

* https://en.wikipedia.org/wiki/Euclidean_vector


### Une addition de vecteurs

Deux manière de le résoudre, **géométriquement** (En déplacant la queue d'un vecteur à la tete du second et en tracant le vecteur qui forme le triangle) ou avec des **coodonnées cartésiennes**. (En ajoutant les coordonnees ensemble vx1+vx2, vy1+vy2 = vx3,vy3)

### Coordonnées cartésiennes

On represente un vecteur sur des coordonnées cartésienne avec x et y.
(Trois représentations différentes)

$$
A = 
\Bigl[
\begin{array}{cc}
   x \\
   y
\end{array}
\Bigr]
\ \ \ \ \
A^{\smash{T}} = ( x \  \ y )
\ \ \ \ \ 
\lVert
a
\rVert
= \sqrt{\smash[b]{x^{\smash{2}} + y^{\smash{2}}}}
$$

* https://en.wikipedia.org/wiki/Cartesian_coordinate_system

### La multiplication de vecteurs

Il y a deux types de multiplication de vecteur, le **produit scalaire** et le **produit vectoriel**.

* Dans ce cours nous utilisons la regle de la main droite.

* https://en.wikipedia.org/wiki/Vector_multiplication
* https://en.wikipedia.org/wiki/Right-hand_rule

### Le produit scalaire


* https://en.wikipedia.org/wiki/Dot_product


### Projection de b sur a


## Chapitre 5 : Le produit vectoriel

* https://en.wikipedia.org/wiki/Cross_product


## Chapitre 6 : ..

## Chapitre 7 : Matrices

---

* [source cours](https://www.youtube.com/@raviramamoorthi/playlists)