# Notes de vidéos openGL for Beginners de Etay Meiri

* https://www.youtube.com/playlist?list=PLA0dXqQjCx0S04ntJKUftl6OaOgsiwHjA
* https://ogldev.org/

## chapitre 0: Configurer C++, Freeglut et glew sur debian

* https://packages.debian.org/bookworm/freeglut3-dev
* https://packages.debian.org/bookworm/libglew-dev

--- 

## chapitre 1: Créer une fenêtre

> voir tutorial01.cpp

* https://ogldev.org/www/tutorial01/tutorial01.html
* https://www.youtube.com/watch?v=DYuLHRsvZwk

Freeglut :
* https://freeglut.sourceforge.net/docs/api.php#Introduction

--- 

## chapitre 2: Afficher un point

> voir tutorial02.cpp

### Opengl pipeline
### Rasterizer input
### Initialiser GLEW

```c++
// l'ordre des includes est important
#include <GL/glew.h>
#include <GL/glut.h>
...
glutInit(&argc, argv);
glutCreateWindow("GLEW Test");
GLenum err = glewInit();
if (GLEW_OK != err)
{
  /* Problem: glewInit failed, something is seriously wrong. */
  fprintf(stderr, "Error: %s\n", glewGetErrorString(err));
  ...
}
```

* On a besoin de créer un context de rendu Opengl valide.

### Charger les sommets dans le buffer :

```c++
	glGenBuffers(1, &VBO);
	glBindBuffer(GL_ARRAY_BUFFER, VBO);
	glBufferData(GL_ARRAY_BUFFER, sizeof(Vertices), Vertices, GL_STATIC_DRAW); 
```

### La fonction call back de rendu

* https://ogldev.org/www/tutorial02/tutorial02.html
* https://www.youtube.com/watch?v=6dtqg0r28Yc

* https://glew.sourceforge.net/basic.html

--- 

## chapitre 3: Afficher un triangle

* La fonction glDrawArrays de GL_POINTS -> GL_TRIANGLES

> glEnable(GL_CULL_FACE);

* https://ogldev.org/www/tutorial03/tutorial03.html
* https://www.youtube.com/watch?v=OErPXo2UqvY