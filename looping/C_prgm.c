main()
{
unsigned int a[11]={0x12345678,,,…..}, h; 
h=0
for (i=0, i<10 ; i++)
    {
 	h = h + a[i];
    }
a[10]= h;
}
