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
#include <altera_up_avalon_video_pixel_buffer_dma.h>
#include <altera_up_avalon_video_character_buffer_with_dma.h>
#include <stdio.h>
#include <system.h>
#include <unistd.h>
#include <stdio.h>

int main()
{
	alt_up_char_buffer_dev * char_buf_dev;
	alt_up_pixel_buffer_dma_dev * pixel_buf_dma_dev;
	// open the Character Buffer port
	// name reference is in system.h
	// "/dev/video_character_buffer_with_dma_0_avalon_char_buffer_slave"
	//
	alt_up_char_buffer_init(char_buf_dev);
	char_buf_dev = alt_up_char_buffer_open_dev("/dev/charbuff");

	// Check for error and output to the console
	//
	if ( char_buf_dev == NULL)
	printf ("Error: could not open character buffer device \n");
	else
	printf ("Opened character buffer device \n");

	unsigned char a = "hello";
    printf("Hello from Nios II!\n");
	printf("Hello from Nios II!1\n");
	printf ("Call init \n");

	pixel_buf_dma_dev = alt_up_pixel_buffer_dma_open_dev ("/dev/pixelbuff");
	if ( pixel_buf_dma_dev == NULL){
	printf ("Error: could not open pixel buffer device \n");
	return 0;
	}
	else
	printf ("Opened pixel buffer device \n");



	alt_up_char_buffer_draw(char_buf_dev, a,10, 10);
	alt_up_char_buffer_draw(char_buf_dev, "hhhhhhhhh",10, 10);
	char text = 'p';
	char text_top_row[40] = "Altera DE10_lipp\0";
	char text_bottom_row[40] = "Character Buffer\0";
	/* output text message near the middle of the VGA monitor */
	alt_up_char_buffer_clear(char_buf_dev);
	alt_up_char_buffer_draw(char_buf_dev, text, 0, 0);
	alt_up_char_buffer_draw(char_buf_dev, text, 0, 59);
	alt_up_char_buffer_draw(char_buf_dev, text, 79, 0);
	alt_up_char_buffer_draw(char_buf_dev, text, 79, 59);
	alt_up_char_buffer_string(char_buf_dev, text_top_row, 20,20);
	alt_up_char_buffer_string(char_buf_dev, text_bottom_row, 40,40);
	// end program message
	printf ("Program complete \n");

	alt_up_pixel_buffer_dma_clear_screen (pixel_buf_dma_dev, 0);
	char snum[5];
	while(1){
		for(int x =0; x< 320; x=x+5){
			for(int y =0; y< 240;y=y+5){
				alt_up_char_buffer_clear(char_buf_dev);

				itoa(y, snum, 10);
				alt_up_char_buffer_string(char_buf_dev, snum, 10, 10);
			alt_up_pixel_buffer_dma_clear_screen (pixel_buf_dma_dev, 0);
			alt_up_pixel_buffer_dma_draw_box(pixel_buf_dma_dev, x, y, 30 + x, y + 30, 0x62, 0);
			usleep(100000);
			}
		}
		printf("Render\n");


		usleep(10000);

	}
  return 0;
}
