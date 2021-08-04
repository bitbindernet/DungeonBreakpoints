SLASH_DUNGEONBREAKPOINTS1 = '/dbp';
SLASH_DUNGEONBREAKPOINTS2 = '/dungeonbreakpoints';
SlashCmdList["DUNGEONBREAKPOINTS"] = function(msg)
    local DoS= "DoS   --> ~90.5% Before Last ardenweald Path (Last area is 10%+)";
    local HoA= "HOA   --> 79.5% Before cathedral (20.5 inside (not counting gargoyles))";
    local NW=  "NW    --> 68.2% Before upstairs (31.8 Upstairs)";
    local PF=  "PF    --> 85.8% Downstairs (14.2 Downstairs)";
    local SoA= "SOA   --> 87.4% Before upstairs (12.6 upstairs)";
    local ToP= "ToP   --> None you need to worry about (submit suggestions!)";
    local MoTS= "Mists --> 10.0% After boss, don't pull fliers";
    local SD=  "SD    --> 74.7% If you skip garg/mistdancer pack before gauntlet";
    print("Dungeon Breakpoints:");
    if msg == "all" or msg == "dos" or msg == "" or msg == "de" then
        print(DoS);
    end
    if msg == "all" or msg == "hoa" or msg == "" or msg == "halls" then
        print(HoA);
    end
    if msg == "all" or msg == "nw" or msg == "" or msg == "necrotic" then
        print(NW);
    end
    if msg == "all" or msg == "pf" or msg == "" or msg == "plague" then
        print(PF);
    end
    if msg == "all" or msg == "soa" or msg == "" or msg == "spires" then
        print(SoA);
    end
    if msg == "all" or msg == "top" or msg == "" or msg == "theater" then
        print(ToP);
    end
    if msg == "all" or msg == "mists" or msg == "" or msg == "mots" then
        print(MoTS);
    end
    if msg == "all" or msg == "sd" or msg == "" or msg == "sanguine" then
        print(SD);
    end
end
