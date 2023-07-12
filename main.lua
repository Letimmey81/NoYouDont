local IconKiller_EventFrame = CreateFrame("Frame")
IconKiller_EventFrame:RegisterEvent("RAID_TARGET_UPDATE")

IconKiller_EventFrame:SetScript(
  "OnEvent",
  function(__, event, arg1)
    local icon = GetRaidTargetIndex("player")
    if (icon ~= nil) then
      SetRaidTarget("player", 0)
    end
  end
)
