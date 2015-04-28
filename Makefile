FLAGS = -Wall -g 

all: wooter RM RM_test

wooter: network.cpp
	g++ ${FLAGS} network.cpp -o networks -pthread -std=c++11 -Wl,--no-as-needed

RM: net_2.cpp
	g++ ${FLAGS} net_2.cpp -o nets_2 -pthread -std=c++11 -Wl,--no-as-needed

RM_test: nets_3.cpp
	g++ ${FLAGS} nets_3.cpp -o nets_3 -pthread -std=c++11 -Wl,--no-as-needed

clean: 
	rm -r fids flwes flwrs users woots rm_1/fids rm_1/flwes rm_1/flwrs rm_1/users rm_1/woots
	
