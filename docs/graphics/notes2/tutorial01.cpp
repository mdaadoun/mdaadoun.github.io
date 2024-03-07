/*
 * Copyright 2010 Etay Meiri
 * Tutorial 01 - Create a window
*/

#include <iostream>
#include <cstdio>
#include <GL/glut.h>

class Window
{
public:
	Window() = default;
	~Window() = default;
//	void render_scene();

	GLint width = 800;
	GLint height = 600;
	GLint x = 400;
	GLint y = 200;
	GLint id;
private:
};


//void Window::render_scene() {
//	std::cout << "window" << std::endl;
//}

static void
RenderSceneCB()
{
	static GLclampf r = 0.0f;
	static GLclampf g = 0.0f;
	static GLclampf b = 0.0f;
	glClearColor(r, g, b, 0.0f);
	r += 1.0f/256.0f;
	if (r >= 1.0f) {
		r = 0.0f;
	}
	g += 1.0f/90.0f;
	if (g >= 1.0f) {
		g = 0.0f;
	}
	b += 1.0f/60.0f;
	if (b >= 1.0f) {
		b = 0.0f;
	}
	glClear(GL_COLOR_BUFFER_BIT);
	glutPostRedisplay();
	glutSwapBuffers();
}

int
main(int argc, char** argv)
{
	auto *win = new Window;

	glutInit(&argc, argv);
	glutInitDisplayMode(GLUT_DOUBLE|GLUT_RGBA);


	glutInitWindowSize(win->width, win->height);

	glutInitWindowPosition(win->x, win->y);

	win->id = glutCreateWindow("Tutorial 01");
	printf("window id: %d\n", win->id);
//	std::cout << win->id << std::endl;

	GLclampf Red = 0.2f, Green = 0.0f, Blue = 0.0f, Alpha = 0.0f;
	glClearColor(Red, Green, Blue, Alpha);

	glutDisplayFunc(RenderSceneCB);

	glutMainLoop();

	delete win;
	return 0;
}