LIBRARY IEEE ;
USE IEEE.STD_LOGIC_1164.ALL ;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_unsigned.ALL;--因为使用到了从Integer类型转换到STD_LOGIC_VECTER
ENTITY cunchu IS 
	PORT  (
	CLKIN1	:	in STD_LOGIC;	
	Din	: 	in STD_LOGIC_VECTOR(7 DOWNTO 0);	--毫秒数，距离数据
	Dout	: 	out STD_LOGIC_VECTOR(7 DOWNTO 0);	--毫秒数，距离数据,纵坐标
	ADDout: 	in INTEGER RANGE 0 TO 388);
END;


ARCHITECTURE	FH1	OF	cunchu IS
	SIGNAL m:  INTEGER RANGE 0 TO 319;
	TYPE MEM IS ARRAY ( NATURAL RANGE <> )	OF STD_LOGIC_VECTOR(7 DOWNTO 0);								
	SIGNAL DATA:MEM(0 TO 240);		
BEGIN
															
 PROCESS(CLKIN1)
	BEGIN
		if CLKIN1'event and CLKIN1 = '0' then 
			if	m<319 then m<=m+1;
			else m<=0;
			end if;
		DATA(m)<=Din;
		end if;
		
END PROCESS ;
		
		Dout<=DATA(ADDout - 68);
	END;
		