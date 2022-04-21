LIBRARY IEEE ;
USE IEEE.STD_LOGIC_1164.ALL ;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_unsigned.ALL;										--因为使用到了从Integer类型转换到STD_LOGIC_VECTER
ENTITY Echo is 
	PORT  (
	Echo_snl	: in STD_LOGIC;
--	AA		 	: 	BUFFER INTEGER RANGE 0 TO 1023;
-- Dout		: out STD_LOGIC_VECTOR(9 DOWNTO 0);
	Dout		: out STD_LOGIC_VECTOR(19 DOWNTO 0);
	clk_time	: in STD_LOGIC);											--输入的高频信号，用于计数,经过计算可以设置为1us
END;

ARCHITECTURE	FH1	OF		Echo 	IS
	SIGNAL BB:  INTEGER RANGE 0 TO 999999;
	SIGNAL QQ:  INTEGER RANGE 0 TO 999999;  				--显示的数字
	BEGIN
	process(Echo_snl,clk_time)
	BEGIN
	if(Echo_snl = '1')		then 											--在回响信号高电平时，计数
				IF 	clk_time'EVENT AND clk_time = '1' THEN	
				BB <= BB+1;															
				END IF; 
	elsif(Echo_snl = '0')	then BB<=0;
	END IF;
	
	if  Echo_snl'EVENT AND Echo_snl = '0' THEN 					--在回响信号下降沿时，停止计数，并且将计数值赋给QQ，后BB<=0
						QQ <= BB;
						
					
	END IF;
	end process;
	
	Dout <= CONV_STD_LOGIC_VECTOR(QQ,20);
	--Dout <= "1111101000";
	
	END;
