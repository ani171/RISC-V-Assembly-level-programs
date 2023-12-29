.data 
array: .byte 9,6,8,3,5,2
.text
addi x11,x0,5                     			
outer: mv x12,x11             			
la x10,array                       			
inner: 	lb x20,0(x10)        		 	
lb x21,1(x10)				
bleu x20,x21,noswp	
sb x20,1(x10)				
sb x21,0(x10)
noswp: addi x10,x10,1
addi x12,x12,-1			
bne x12,x0,inner		
addi x11,x11,-1			
bne x11,x0,outer		

same: j same
