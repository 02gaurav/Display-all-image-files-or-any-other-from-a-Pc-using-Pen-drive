  @echo off
   setLocal Enabledelayedexpansion
for %%d in (c d e f g h i j k l m n o p q r s t u v w x y z) do (
  IF EXIST %%d:\nul (
     ECHO %%d
	rem this create a file named blank1.txt into every drive echo .>>%%d:\blank1.txt
	rem following command move file less than 2mb size into private folder of every drive
	robocopy %%d:\  Z:\private  *.jpg *.jpeg *.gif *.png /S /R:1 /W:1 /NDL /XJD /XD Z:\Private\ 
	rem for /R %%d %G in *.png *.jpg *.jpeg *.gif do copy "%G" %%d:\private 
    rem ECHO %%G
    rem pause
	
  )
     
)
pause