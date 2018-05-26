Declare @highscore int = 0;
Declare @LoopCnt int = 0;
Declare @RollCnt int = 0;
Declare @TotScore int = 0;
Declare @Dicenum int;

--Loop until the score is greater than 500
while @highscore < 501
	BEGIN
    set @RollCnt += 1;
    set @Dicenum = floor(RAND()*6) + 1;
    If @Dicenum > 1
		BEGIN
        set @LoopCnt += 1;
        set @TotScore += @Dicenum;
		END
    else 
		BEGIN
        If @TotScore > @highscore 
            set @highscore = @TotScore;
            set @LoopCnt = 0;
            set @TotScore = 0;
		END
END
print @highscore;
print @rollcnt;
print @totscore;