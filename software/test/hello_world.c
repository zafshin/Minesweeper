/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include <altera_up_avalon_accelerometer_spi.h>
#include <altera_up_avalon_video_pixel_buffer_dma.h>
#include <altera_up_avalon_video_character_buffer_with_dma.h>
#include <unistd.h>
#include <system.h>
#include <altera_avalon_pio_regs.h>
#include <alt_types.h>


alt_up_accelerometer_spi_dev *gyro;
alt_up_char_buffer_dev * char_buf_dev;
alt_up_pixel_buffer_dma_dev * pixel_buf_dma_dev;
alt_32 xAccel = 0;
alt_32 yAccel = 0;
alt_32 zAccel = 0;

void displayL(alt_u64 a){
	IOWR_ALTERA_AVALON_PIO_DATA(LEDR_BASE,a);
}


void display(alt_u64 a){
	char a0 = (a & 0x00000F);
	char a1 = (a & 0x0000F0) >> 4;
	char a2 = (a & 0x000F00) >> 8;
	alt_u32 b0 = a >> 8;
	char a3 = (b0 & 0x0000F0) >> 4;
	char a4 = (b0 & 0x000F00) >> 8;

	IOWR_ALTERA_AVALON_PIO_DATA(HEX0_BASE, a0);
	IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, a1);
	IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, a2);
	IOWR_ALTERA_AVALON_PIO_DATA(HEX3_BASE, a3);
	IOWR_ALTERA_AVALON_PIO_DATA(HEX4_BASE, a4);

}

void displayd(alt_u64 a){
	char a0 = a-((a / 10) * 10);
	a = a /10;
	char a1 = a-((a / 10) * 10);
	a = a /10;
	char a2 = a-((a / 10) * 10);
	a = a /10;
	char a3 = a-((a / 10) * 10);
	a = a /10;
	char a4 = a-((a / 10) * 10);
	a = a /10;
	char a5 = a-((a / 10) * 10);


	IOWR_ALTERA_AVALON_PIO_DATA(HEX0_BASE, a0);
	IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, a1);
	IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, a2);
	IOWR_ALTERA_AVALON_PIO_DATA(HEX3_BASE, a3);
	IOWR_ALTERA_AVALON_PIO_DATA(HEX4_BASE, a4);
	IOWR_ALTERA_AVALON_PIO_DATA(HEX5_BASE, a5);

}


void displaye(unsigned char dnum, unsigned char val){
	switch(dnum){
		case 0:
			IOWR_ALTERA_AVALON_PIO_DATA(HEX0_BASE, val);
			break;
		case 1:
			IOWR_ALTERA_AVALON_PIO_DATA(HEX1_BASE, val);
			break;
		case 2:
			IOWR_ALTERA_AVALON_PIO_DATA(HEX2_BASE, val);
			break;
		case 3:
			IOWR_ALTERA_AVALON_PIO_DATA(HEX3_BASE, val);
			break;
		case 4:
			IOWR_ALTERA_AVALON_PIO_DATA(HEX4_BASE, val);
			break;
		case 5:
			IOWR_ALTERA_AVALON_PIO_DATA(HEX5_BASE, val);
			break;
	}
}

int main2()
{
  alt_up_char_buffer_init(char_buf_dev);
  char_buf_dev = alt_up_char_buffer_open_dev("/dev/charbuff");
  if ( char_buf_dev == NULL)
  	printf ("Error: could not open character buffer device \n");
  	else
  	printf ("Opened character buffer device \n");
  pixel_buf_dma_dev = alt_up_pixel_buffer_dma_open_dev ("/dev/pixelbuff");
  if ( pixel_buf_dma_dev == NULL){
  	printf ("Error: could not open pixel buffer device \n");
  	return 0;
  }
  	else
  	printf ("Opened pixel buffer device \n");


  printf("Hello from Nios II!\n");





  alt_up_pixel_buffer_dma_draw_box(pixel_buf_dma_dev,0,0,160,120,0x05,0);
  while(1){
	  alt_up_accelerometer_spi_read_x_axis(gyro, &xAccel);
	  alt_up_accelerometer_spi_read_y_axis(gyro, &yAccel);
	  alt_up_accelerometer_spi_read_z_axis(gyro, &zAccel);
	  displayd(xAccel + 360);
	  printf("x=%li y=%li z=%li\n", xAccel, yAccel, zAccel);
	  alt_up_pixel_buffer_dma_clear_screen(pixel_buf_dma_dev,0);
	  yAccel = yAccel/5;
	  xAccel = -xAccel/3;
	  alt_up_pixel_buffer_dma_draw_box(pixel_buf_dma_dev,80+xAccel,60+yAccel,83+xAccel,63+yAccel,0b00000011,0);

	  displayL(xAccel + 360);
	  char x[10];
	  char y[10];
	  char z[10];
	  itoa(xAccel,x,10);
	  itoa(yAccel,y,10);
	  itoa(zAccel,z,10);
	  alt_up_char_buffer_clear(char_buf_dev);
	  alt_up_char_buffer_string(char_buf_dev,"X:",0,1);
	  alt_up_char_buffer_string(char_buf_dev,&x,3,1);
	  alt_up_char_buffer_string(char_buf_dev,"y:",0,2);
	  alt_up_char_buffer_string(char_buf_dev,&y,3,2);
	  alt_up_char_buffer_string(char_buf_dev,"z:",0,3);
	  alt_up_char_buffer_string(char_buf_dev,&z,3,3);
	  usleep(10000);
  }
  return 0;
}
