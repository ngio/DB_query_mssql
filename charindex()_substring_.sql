


-- ※ CHARINDEX() 함수와 SUBSTRING함수를 이용한 분리

DECLARE @DATA VARCHAR(MAX), @separator CHAR, @substring varchar(max), @dividepos INT, @tot_cnt int

set @data = 'a,bb,ccc,ddd,eeeee,ffffff,gggggggg,hhhhhh,iiiiiiiii' 
set @separator = ','
set @dividepos = CHARINDEX(@separator, @data)
set @tot_cnt = 0

while @dividepos <> 0 or len(@data) > 0
begin
	set @dividepos = CHARINDEX(@separator,@data)
	if( @dividepos = 0 )
	begin
		set @substring = @data
		set @data = ''
	end
	else
	begin
		select @substring = SUBSTRING(@data,1,@dividepos - 1)
		set @data = SUBSTRING(@data, @dividepos +1, len(@data))
	end 
	set @tot_cnt = @tot_cnt + 1

	-- select @substring, @tot_cnt

end
