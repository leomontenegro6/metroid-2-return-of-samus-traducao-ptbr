@echo off
call build.bat
.\Ferramentas\flips.exe -c "orig.gb" "m2ros.gb" "m2ros [W] v11.ips"

call build.bat -colorization
.\Ferramentas\flips.exe -c "orig.gb" "m2ros.gb" "m2ros_ejrtq_colorization_ptbr.ips"

call build.bat -maphack
.\Ferramentas\flips.exe -c "orig.gb" "m2ros.gb" "m2ros_looe_maphack_ptbr.ips"

.\Ferramentas\7z.exe a -tzip "Metroid 2 - Return of Samus (BR) (1.2).zip"^
    "m2ros [W] v11.ips"^
    "LEIAME.txt"^
    "m2ros_ejrtq_colorization_ptbr.ips"^
    "m2ros_looe_maphack_ptbr.ips"

del "m2ros [W] v11.ips"
del "m2ros_ejrtq_colorization_ptbr.ips"
del "m2ros_looe_maphack_ptbr.ips"