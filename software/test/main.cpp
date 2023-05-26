#include "renderer.h"
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string>
#include <system.h>
#include "altera_avalon_pio_regs.h"
	bool mines[8][8];
	unsigned int numbers[8][8];
	struct gameGrapic{
		graphicObj *box;
		graphicObj *text;
	};
	gameGrapic gg[8][8];
	graphicObj *ptro[8][8];
	void showMines();
	void selectPlace(int x, int y);
	void findNum();
	bool gameOver=false;
	bool stop = false;
int main(){
	Renderer *en;
	en = new Renderer();

	for(int y = 0; y<8;y++){
	for(int i = 0; i<8;i++){
		graphicObj box1;
		box1.color.B = 0.6;
		box1.color.R = 0;
		box1.color.G = 0;
		box1.position.x = -1+ 0.25+( i*0.2);
		box1.position.y = 0.9 - 1.3*(float)y/7;
		box1.size.x = 0.07;
		box1.size.y = 0.07;
		box1.typee = box;
		en->addObj(box1);

		graphicObj text1;
		text1.position = box1.position;
		text1.position.x = text1.position.x +0.09;
		text1.position.y = text1.position.y -0.07;
//		char a[10];
//		itoa(i,a,10);
//		std::string b = ""
		text1.text.text = "";
		text1.typee = text;
		en->addObj(text1);

	}
	}
	int selectedx=0;
	int selectedy=0;
	srand((int)((en->getGX()*20)+ (en->getGY()* 60)));

	int l = 0;
	for(int i = 0; i < 8; i++){
			for(int j = 0; j < 8; j++){
				mines[j][i]= (bool)((rand()% 64) > 42);
				gg[j][i].box = en->getPtrBuffer(l);
				gg[j][i].text = en->getPtrTBuffer(l);
				l++;
				}
		}

	findNum();

	while(!stop){

		int x = ((-en->getGX())+1) * 7;
		int y = (en->getGY()+1) * 7;
		if ((x < 8) & (y<8)){
		gg[selectedx][selectedy].box->color.G=0.0;
		if(!gameOver){
		selectedx = x;
		selectedy = y;
		gg[selectedx][selectedy].box->color.G =0.5;
		unsigned short in = IORD(KEY_BASE, 0);
				if(!((in & 0b10)>>1)){
					selectPlace(selectedx,selectedy);
				}
		}
		else{
			graphicObj text1;
			text1.position.x = -0.1;
			text1.position.y =-0.9;
	//		char a[10];
	//		itoa(i,a,10);
	//		std::string b = ""
			text1.text.text = "Game Over";
			text1.typee = text;
			en->addObj(text1);
			stop =true;
		}}
		printf("x=%li y=%li\n",x,y);
		en->Render();
	}
	return 0;
}

void showMines(){
	for(int i =0; i<8;i++){
		for(int j=0; j<8 ; j++){
			if(mines[i][j])
				gg[i][j].box->color.R = 1;
		}
	}
}
void findNum(){
	for(int x =0; x<8;x++){
			for(int y=0; y<8 ; y++){
				int num = 0;
				if(!(x==0))
				{
					if(!(y==0))
						if(mines[x-1][y-1])
							num++;
					if(mines[x-1][y])
						num++;
					if(!(y==7))
						if(mines[x-1][y+1])
							num++;
				}
				if(!(y==0))
					if(mines[x][y-1])
						num++;
				if(mines[x][y])
					num++;
				if(!(y==7))
					if(mines[x][y+1])
						num++;

				if(!(x==7))
				{
					if(!(y==0))
						if(mines[x+1][y-1])
							num++;
					if(mines[x+1][y])
					num++;
					if(!(y==7))
						if(mines[x+1][y+1])
							num++;
				}
				numbers[x][y] = num;
			}
		}
}
void selectPlace(int x, int y){
	char a[2];
	if(mines[x][y]){
		showMines();
		gameOver=true;
	}else{
	if(numbers[x][y] == 0)
		gg[x][y].box->color.B = 0.9;
	else{
	itoa(numbers[x][y],a,10);
	std::string b = a;
	gg[x][y].text->text.text =b;}}
}



