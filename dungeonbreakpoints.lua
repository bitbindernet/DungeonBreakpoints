SLASH_DUNGEONBREAKPOINTS1 = '/dbp';
SLASH_DUNGEONBREAKPOINTS2 = '/dungeonbreakpoints';
SlashCmdList["DUNGEONBREAKPOINTS"] = function(msg)
    local DoS="DoS   --> Before Last Path ~90.5% (Last area is 10%+)";
    local HoA="HOA   --> 79.5% before cathedral (20.5 inside (not counting gargoyles))";
    local NW="NW    --> 68.2% before upstairs (31.8 Upstairs)";
    local PF="PF    --> 85.8% Downstairs (14.2 Downstairs)";
    local SoA="SOA   --> 87.4% before upstairs (12.6 upstairs)";
    local TOP="ToP   --> None you need to worry about";
    local MoTS="Mists --> 10% After boss, don't pull bugs";
    local SD="SD    --> 74.7% If you skip garg/mistdancer pack before gauntlet";
    print("Dungeon Break Points:");
    if msg == "dos" or msg == "" or msg == "de" then
        print(DoS);
    end
    if msg == "hoa" or msg == "" or msg == "halls" then
        print(HoA);
    end
    if msg == "nw" or msg == "" or msg == "necrotic" then
        print(NW);
    end
    if msg == "pf" or msg == "" or msg == "plague" then
        print(PF);
    end
    if msg == "soa" or msg == "" or msg == "spires" then
        print(SoA);
    end
    if msg == "top" or msg == "" or msg == "theater" then
        print(ToP);
    end
    if msg == "mists" or msg == "" or msg == "mots" then
        print(MoTS);
    end
    if msg == "sd" or msg == "" or msg == "sanguine" then
        print(SD);
    end
end
