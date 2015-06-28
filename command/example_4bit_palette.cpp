#include <cmath>
#include <iostream>

#include "lodepng.h"
std::vector<unsigned char> image;
void point(int x, int y, int w, int h, int color=1){
	size_t byte_index = (y * w + x) / 2;
	bool byte_half = (y * w + x) % 2 == 1;
	image[byte_index] |= (unsigned char)(color << (byte_half ? 0 : 4));
}
void circle(int a, int b, int w, int h, int r, int color=1){
	for(int y = a-r; y <= a+r; y++)
		for(int x = b-sqrt(r*r-(y-a)*(y-a)); x <= b+sqrt(r*r-(y-a)*(y-a)); x++)
		{
			point(x, y, w, h, color);
		}	
}
void line(int x1,int y1,int x2,int y2,int w,int h,int r,int color=1)
{
	if(r >= 0){
		for(int i=-r/2;i<=r/2;i++){
			line(x1+i, y1, x2+i, y2, w, h, -1, color);
			line(x1, y1+i, x2, y2+i, w, h, -1, color);
		}
	}
	int dx=x2-x1, dy=y2-y1, px=1, py=1;
	if(dx < 0)px=-1, dx=-dx;
	if(dy < 0)py=-1, dy=-dy;
	if(dx>=dy)
	{
		for(int e=dy-dx/2;x1-x2;x1+=px){
			point(x1,y1,w,h,color);
			if(e>0)y1+=py, e-=dx;
			e+=dy;
		}
	}
	else
	{
		for(int e=dx-dy/2;y1-y2;y1+=py){
			point(x1,y1,w,h,color);
			if(e>0)x1+=px, e-=dy;
			e+=dx;
		}
	}
}

int main(int argc, char *argv[])
{
	//check if user gave a filename
	if(argc < 2)
	{
		std::cout << "please provide a filename to save to" << std::endl;
		return 0;
	}

	//create encoder and set settings and info (optional)
	lodepng::State state;

	//generate palette
	lodepng_palette_add(&state.info_png.color, 0, 0, 0, 1);
	lodepng_palette_add(&state.info_raw, 0, 0, 0, 1);

	//both the raw image and the encoded image must get colorType 3 (palette)
	state.info_png.color.colortype = LCT_PALETTE; //if you comment this line, and create the above palette in info_raw instead, then you get the same image in a RGBA PNG.
	state.info_png.color.bitdepth = 4;
	state.info_raw.colortype = LCT_PALETTE;
	state.info_raw.bitdepth = 4;
	state.encoder.auto_convert = 1; //we specify ourselves exactly what output PNG color mode we want

	//generate some image
	const unsigned w = 512;
	const unsigned h = 512;
	image.resize((w * h * 4 + 7) / 8, 0);
	circle(50, 50, w, h, 5);
	line(50, 200, 100, 100, w, h, 3);
	line(100, 200, 50, 100, w, h, 3);
	line(150, 100, 100, 200, w, h, 3);
	line(100, 100, 150, 200, w, h, 3);
	//encode and save
	std::vector<unsigned char> buffer;
	unsigned error = lodepng::encode(buffer, image.empty() ? 0 : &image[0], w, h, state);
	if(error)
	{
		std::cout << "encoder error " << error << ": "<< lodepng_error_text(error) << std::endl;
		return 0;
	}
	lodepng::save_file(buffer, argv[1]);
}
