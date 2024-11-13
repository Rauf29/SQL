-- SQL Hello world

SELECT 'Hello World!' as col 

-- SQL + - * / 

SELECT 2 + 2 as col

SELECT 2 - 2 as col

SELECT 2 * 2 as col

SELECT 2 / 2 as col
-- How to declear variable and assign value 
SET @num1 = 10;
SET @num2 = 20;

-- How to do math 

SELECT 
@num1 + @num2 as Addition,
@num1 - @num2 as Subtraction,
@num1 * @num2 as Multiplication,
@num1 / @num2 as Division

--Random Number

SELECT RAND() as RandomNumber

-- Find min and max

SELECT least(@num1, @num2) as Min, greatest(@num1, @num2) as Max

