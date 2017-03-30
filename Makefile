GLFW_CFLAGS = $(shell pkg-config glfw3 --cflags)
GLFW_LFLAGS = $(shell pkg-config glfw3 --libs)

GLEW_CFLAGS = $(shell pkg-config glew --cflags)
GLEW_LFLAGS = $(shell pkg-config glew --libs)

MACOS_LFLAGS = -framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo

CFLAGS = $(GLFW_CFLAGS) $(GLEW_CFLAGS)
LFLAGS = $(GLFW_LFLAGS) $(GLEW_LFLAGS) $(MACOS_LFLAGS)

main: main.c
	$(CC) -o $@ $(CFLAGS) $(LFLAGS) $+
