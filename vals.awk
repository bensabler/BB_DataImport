BEGIN { ln = 0;

}
{

	ln++;
	if ( ln == 1 )
	{
		cols = NF;
		for ( i = 1; i <= NF; i++ )
		{
			nmary[i] = $i;
		}
	}
	if ( ln == 2 )
	{
		for ( i = 1; i <= NF; i++ )
		{
			ary[i] = 0;
		}
	}
	if ( ln > 1 )
	{
		for ( i = 1; i <= NF; i++ )
		{	n = length($i);
			if ( ary[i] < n )
			{	
				ary[i] = n;
			}
		}
	}
}
END  {
	printf("insert into %s.%s (", sname, tname);
	for ( i = 1; i < cols; i++ )
	{
		printf("bb_%s,", nmary[i]);
	}
	printf("bb_%s)\n", nmary[NF]);
	printf("values (");
	for ( i = 1; i < cols; i++ )
	{
		printf("%s,", ary[i]);
	}
	printf("%s)\n", ary[NF]);
}
