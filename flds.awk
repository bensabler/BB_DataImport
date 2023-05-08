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
			if ( n <= 0 )
			{
				ary[i] = 1;
			}
		}
	}
}
END  {
	printf("create table %s.%s (\n", sname, tname);
	for ( i = 1; i < cols; i++ )
	{
		printf("bb_%s\tvarchar(%d),\n", nmary[i], ary[i]);
	}
	printf("bb_%s\tvarchar(%d)\n", nmary[i], ary[i]);
}
