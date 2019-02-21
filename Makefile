SERVICE = bookings movies showtimes users

build:
	@for item in $(SERVICE); do			\
		echo "Building $$item"; 		\
		docker build -t $$item ./$$item;  	\
		echo "Done !";				\
	done;
