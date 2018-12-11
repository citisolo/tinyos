
InputFiles =   3_3_hello_world_isr.img \
							 3_4_4_using_stack.img \
							 3_4_2_x_marks_spot.img \
							 3_4_5_question3_pseudocodetoasm.img \
               3_4_8_printing_function.img \
							 basic_boot.img         \
							 3_3_hello_world_isr.bin \
               3_4_4_using_stack.bin \
							 3_4_2_x_marks_spot.bin \
							 3_4_5_question3_pseudocodetoasm.bin \
							 3_4_8_printing_function.bin \
							 basic_boot.bin         \


all: $(InputFiles)

%.bin: %.asm
	nasm $<  -f bin -o $@; chmod +x $@

%.img: %.bin
	dd if=$< of=$@ conv=notrunc; chmod +x $@

clean:
	rm -f *.bin
	rm -f *.img
