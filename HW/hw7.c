#include <stdio.h>
int main ()
{
  int a, b, c, d;
  printf("            cd  \n");
  printf("     00 01 11 10\n");
  printf("________________\n");

  for (a = 0; a < 2; a++)
    {
      for (b = 0; b < 2; b++)
	{

	int b_temp = b;
	if ( a == 1 && b == 0 )
	b_temp = 1;
	else if (a == 1 && b == 1)
	b_temp = 0;
	  printf("ab=%d%d|", a, b_temp);

	  for (c = 0; c < 2; c++)
	    {
	      for (d = 0; d < 2; d++)
		{
		  if (c == 1 && d == 0)
		    {
		      int f, f_temp;
		      f = ((~a) & b_temp & c) | (c & d);
		      f_temp = f;

		      d++;
		      f = ((~a) & b_temp & c) | (c & d);

		      printf("%d", f);
		      printf("%d", f_temp);
		    }
		  else
		    {
		      int f;
			f = ((~a) & b_temp & c) | (c & d);
		      printf("%d",f);
		    }
		}
	    }
  printf("\n");
    }
}
return 0;
}
