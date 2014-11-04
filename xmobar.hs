Config { font = "-*-Fixed-Bold-R-Normal-*-13-*-*-*-*-*-*-*"
, bgColor = "black"
, fgColor = "grey"
, position = Top
, lowerOnStart = True
, commands = [ Run Weather "CYOW" ["-t","<station>: <tempC>C","-L","18","-H","25","--normal","green","--high","red","--low","lightblue"] 36000
             , Run Network "eth0" ["-L","0","-H","32","--normal","green","--high","red"] 10
             , Run Network "eth1" ["-L","0","-H","32","--normal","green","--high","red"] 10
             , Run Cpu ["-L","3","-H","50","--normal","green","--high","red"] 10
             , Run Memory ["-t","Mem: <usedratio>%"] 10
             , Run Swap [ ] 10
             , Run Battery [ "--template", "Batt: <acstatus>"
                           , "--Low",      "20"
                           , "--High",     "80"
                           , "--low",   "darkred"
                           , "--normal", "darkorange"
                           , "--high", "darkgreen"
                           , "--"
                            -- discharging status 
                            , "-o", "<left>% (<timeleft>)"
                            -- AC "on" status
                            , "-O", "<fc=#dAA520>Charging</fc>"
                            -- charged status
                            , "-i", "<fc=#006000>Charged</fc>"
                           ] 50
             , Run Date "%a %b %_d %Y %H:%M:%S" "date" 10
             , Run Com "dropbox" ["status"] "dropbox" 50]
, sepChar = "%"
, alignSep = "}{"
, template = "%cpu% | %memory% * %swap% | %battery% | %dropbox% | %eth0% }{ %CYOW% | <fc=#ee9a00>%date%</fc>"
}

