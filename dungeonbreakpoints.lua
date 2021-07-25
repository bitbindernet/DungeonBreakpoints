string DoS  = "DoS   --> Before Last Path ~90.5% (Last area is 10%+)"
string HoA  = "HOA   --> 79.5% before cathedral (20.5 inside (not counting gargoyles))"
string NW   = "NW    --> 68.2% before upstairs (31.8 Upstairs)"
string PF   = "PF    --> 85.8% Downstairs (14.2 Downstairs)"
string SoA  = "SOA   --> 87.4% before upstairs (12.6 upstairs)"
string TOP  = "ToP   --> None you need to worry about"
string MoTS = "Mists --> 10% After boss, don't pull bugs"
string SD   = "SD    --> 74.7% If you skip garg/mistdancer pack before gauntlet"

SLASH_DUNGEONBREAKPOINTS, SLASH_DUNGEONBREAKPOINTS2 = '/dbp', '/dungeonbreakpoints';
local function handler(msg, editBox)
    print("Dungeon Break Points:");
    if msg == "dos" or msg == ""
        print(DoS);
    if msg == "hoa" or msg == ""
        print(HoA);
    if msg == "nw" or msg == ""
        print(NW);
    if msg == "pf" or msg == ""
        print(PF);
    if msg == "soa" or msg == ""
        print(SoA);
    if msg == "top" or msg == ""
        print(ToP);
    if msg == "mists" or msg == "" or msg == "mots"
        print(MoTS);
    if msg == "sd" or msg == ""
        print(SD);
end

SlashCmdList["DUNGEONBREAKPOINTS"] = handler; -- Also a valid assignment strategy