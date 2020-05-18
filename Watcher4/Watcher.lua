local AceAddon = LibStub("AceAddon-3.0");

Watcher4 = AceAddon:NewAddon("Watcher", "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0", "AceSerializer-3.0");
Watcher4.Frames = {};
Watcher4.Display = {};
Watcher4.SpellFilters = {};
Watcher4.Libs = {};

Watcher4.Libs.SharedMedia = LibStub:GetLibrary("LibSharedMedia-3.0");
Watcher4.Libs.SpellBook = LibStub:GetLibrary("LibSpellbook-1.0");
Watcher4.Libs.PvpTalents = LibStub:GetLibrary("LibPvpTalents-1.0");
Watcher4.Libs.SpecIcons = LibStub:GetLibrary("LibSpecIcons-1.0");

Watcher4Tooltip = CreateFrame("GameTooltip", "Watcher4Tooltip", UIParent, "GameTooltipTemplate");
Watcher4Tooltip:SetFrameStrata("TOOLTIP");

local loadFrame = CreateFrame("Frame");
loadFrame:RegisterEvent("PLAYER_LOGIN");
loadFrame:SetScript("OnEvent", function()
	Watcher4_SelectedSpecIcon_Initiate();
end)

local tempFrame = CreateFrame("Frame");
tempFrame:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED");
tempFrame:SetScript("OnEvent", function()
	Watcher4_SelectedSpecIcon_Update();
end)