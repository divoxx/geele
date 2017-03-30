OS = $(shell uname)

GLFW_CFLAGS = $(shell pkg-config glfw3 --cflags)
GLFW_LFLAGS = $(shell pkg-config glfw3 --libs)

GLEW_CFLAGS = $(shell pkg-config glew --cflags)
GLEW_LFLAGS = $(shell pkg-config glew --libs)

ifeq ($(OS), Darwin)
OS_LFLAGS = -framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo
endif

CFLAGS = $(GLFW_CFLAGS) $(GLEW_CFLAGS)
LFLAGS = -lm $(GLFW_LFLAGS) $(GLEW_LFLAGS) $(COS_LFLAGS)

main: main.c
	$(CC) -o $@ $(CFLAGS) $(LFLAGS) $+
