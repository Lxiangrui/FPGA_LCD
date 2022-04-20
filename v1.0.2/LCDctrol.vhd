LIBRARY IEEE ;
USE IEEE.STD_LOGIC_1164.ALL ;
ENTITY LCDctrol IS 
	PORT  (
	DCLK	:	in STD_LOGIC;
	ext_rst_n :in STD_LOGIC;
	DATA	:	out STD_LOGIC_vector (15 DOWNTO 0);
	HSYNC :	out STD_LOGIC;
	lcd_light_en:	out STD_LOGIC;
	VSYNC	:	out STD_LOGIC);
END;

ARCHITECTURE	FH1	OF	LCDctrol IS
	SIGNAL Thsync:  INTEGER RANGE 0 TO 409;
	SIGNAL PHSYNC:	  STD_LOGIC;
	SIGNAL Tvsync:  INTEGER RANGE 0 TO 263;
	SIGNAL PVSYNC:	  STD_LOGIC;
	SIGNAL DATAAA:	  STD_LOGIC_vector (15 DOWNTO 0);
	
	BEGIN
	
DCLKCNT:	process(DCLK,ext_rst_n)												--行信号计数
		begin
			
			
			IF DCLK'EVENT AND DCLK = '0' THEN
				IF	  Thsync<408 THEN Thsync<=Thsync+1;
				ELSE Thsync<=0;
				END IF;	
				IF	Thsync<30 THEN PHSYNC<='0';--行同步信号
				ELSE					PHSYNC<='1';
				END IF;
			END IF;
			
			IF	ext_rst_n = '0' THEN Thsync<=0;				--按下复位按键，确保同步
			END IF;
END PROCESS	DCLKCNT;			
			
			
			
TvsyncCNT:	process(PHSYNC,ext_rst_n)										--场信号计数
		begin
			
			
			IF PHSYNC'EVENT AND PHSYNC = '0' THEN
				IF	  Tvsync<262 THEN Tvsync<=Tvsync+1;
				ELSE Tvsync<=0;
				END IF;	
				IF	Tvsync<3  THEN PVSYNC<='0';--场同步信号
				ELSE					PVSYNC<='1';
				END IF;
			END IF;
			
			IF	ext_rst_n = '0' THEN Tvsync<=0;				--按下复位按键，确保同步
			END IF;

END PROCESS	TvsyncCNT;	
			

OUTDADA:	process(Thsync,Tvsync)	
		begin		
																	--数据信号
--			IF	Tvsync>18 AND Tvsync<258 AND Thsync>68 AND Thsync<200 THEN 
--				DATAAA<="1111100000000000";
--			ELSIF	Tvsync>18 AND Tvsync<258 AND Thsync>200 AND Thsync<388 THEN 
--				DATAAA<="0000011111000000";
--			END IF;
			
			IF	Thsync>68 AND Thsync<388 AND Tvsync>210 AND Tvsync<258 THEN 
					DATAAA<="1111100000000000";
			ELSIF	Thsync>68 AND Thsync<388 AND Tvsync>188 AND Tvsync<210 THEN 
					DATAAA<="1111100000011111";		
			
			ELSIF	Thsync>68 AND Thsync<388 AND Tvsync>148 AND Tvsync<188 THEN 
					DATAAA<="1100011111000000";
			ELSIF	Thsync>68 AND Thsync<388 AND Tvsync>128 AND Tvsync<148 THEN 
					DATAAA<="0000011111000000";
					
			ELSIF	Thsync>68 AND Thsync<388 AND Tvsync>100 AND Tvsync<128 THEN 
					DATAAA<="0000000000111111";
			ELSIF	Thsync>68 AND Thsync<388 AND Tvsync>78 AND Tvsync<100 THEN 
					DATAAA<="0000001100111111";
					
			ELSIF	Thsync>68 AND Thsync<388 AND Tvsync>18 AND Tvsync<78 THEN 
					DATAAA<="0000011111111111";
			END IF;
			
		end process OUTDADA;
		
		
		
		
		
		DATA<=DATAAA;
		HSYNC<=PHSYNC;
		VSYNC<=PVSYNC;
		lcd_light_en<='1';
	END;
		