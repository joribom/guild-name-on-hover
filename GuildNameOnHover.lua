function Guild_ToolTip(self)
    if (UnitIsPlayer("mouseover")) then
        local guildName, guildRank = GetGuildInfo("mouseover");
		if (guildName == nil) then
			GameTooltip:AddLine("(No guild)", 1, 1, 1, 1);
		else
			if (guildRank == nil) then
				GameTooltip:AddLine("<" .. guildName .. ">", 1, 1, 1, 1);
			else
				GameTooltip:AddLine("<" .. guildName .. "> Rank: " .. guildRank, 1, 1, 1, 1);
			end;
		end;
        GameTooltip:Show();
        end;
end
