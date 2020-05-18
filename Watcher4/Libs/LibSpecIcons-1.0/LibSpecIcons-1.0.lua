--[[
LibSpecIcons-1.0 - Retrieve information about specialization icons for display in various UI components.
Copyright (C) 2018-2019 Jordy141 (Grimmj-Nagrand)

All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice,
      this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright notice,
      this list of conditions and the following disclaimer in the documentation
      and/or other materials provided with the distribution.
    * Redistribution of a stand alone version is strictly prohibited without
      prior written authorization from the LibSpecIcons project manager.
    * Neither the name of the LibSpecIcons author nor the names of its contributors
      may be used to endorse or promote products derived from this software without
      specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--]]

local MAJOR, MINOR = "LibSpecIcons-1.0", 1
assert(LibStub, MAJOR.." requires LibStub")
local lib = LibStub:NewLibrary(MAJOR, MINOR)
if not lib then return end

if (not lib.icons) then
	lib.icons = {
		[62] = { -- Arcane Mage
			['specId'] = 62;
			['specName'] = 'Arcane';
			['iconName'] = "Spell_Holy_MagicalSentry";
			['fileId'] = 135932;
		},
		[63] = { -- Fire Mage
			['specId'] = 63;
			['specName'] = 'Fire';
			['iconName'] = "Spell_Fire_FireBolt02";
			['fileId'] = 135810;
		},
		[64] = { -- Frost Mage
			['specId'] = 64;
			['specName'] = 'Frost';
			['iconName'] = "Spell_Frost_FrostBolt02";
			['fileId'] = 135846;
		},
		[65] = { -- Holy Paladin
			['specId'] = 65;
			['specName'] = 'Holy';
			['iconName'] = "Spell_Holy_HolyBolt";
			['fileId'] = 135920;
		},
		[66] = { --Protection Paladin
			['specId'] = 66;
			['specName'] = 'Protection';
			['iconName'] = "Ability_Paladin_ShieldoftheTemplar";
			['fileId'] = 236264;
		},
		[70] = { --Retribution Paladin
			['specId'] = 70;
			['specName'] = 'Retribution';
			['iconName'] = "Spell_Holy_AuraOfLight";
			['fileId'] = 135873;
		},
		[71] = { -- Arms Warrior
			['specId'] = 71;
			['specName'] = 'Arms';
			['iconName'] = "Ability_Warrior_SavageBlow";
			['fileId'] = 132355;
		},
		[72] = { -- Fury Warrior
			['specId'] = 72;
			['specName'] = 'Fury';
			['iconName'] = "Ability_Warrior_InnerRage";
			['fileId'] = 132347;
		},
		[73] = { -- Protection Warrior
			['specId'] = 73;
			['specName'] = 'Protection';
			['iconName'] = "Ability_Warrior_DefensiveStance";
			['fileId'] = 132341;
		},
		[102] = { -- Balance Druid
			['specId'] = 102;
			['specName'] = 'Balance';
			['iconName'] = "Spell_Nature_StarFall";
			['fileId'] = 136096;
		},
		[103] = { -- Feral Druid
			['specId'] = 103;
			['specName'] = 'Feral';
			['iconName'] = "Ability_Druid_CatForm";
			['fileId'] = 132115;
		},
		[104] = { -- Guardian Druid
			['specId'] = 104;
			['specName'] = 'Guardian';
			['iconName'] = "Ability_Racial_BearForm";
			['fileId'] = 132276;
		},
		[105] = { -- Restoration Druid
			['specId'] = 105;
			['specName'] = 'Restoration';
			['iconName'] = "SPELL_NATURE_HEALINGTOUCH";
			['fileId'] = 136041;
		},
		[250] = { -- Blood DK
			['specId'] = 250;
			['specName'] = 'Blood';
			['iconName'] = "Spell_Deathknight_BloodPresence";
			['fileId'] = 135770;
		},
		[251] = { -- Frost DK
			['specId'] = 251;
			['specName'] = 'Frost';
			['iconName'] = "Spell_Deathknight_FrostPresence";
			['fileId'] = 135773;
		},
		[252] = { -- Unholy DK
			['specId'] = 252;
			['specName'] = 'Unholy';
			['iconName'] = "Spell_Deathknight_UnholyPresence";
			['fileId'] = 135775;
		},
		[253] = { -- Beast Mastery Hunter
			['specId'] = 253;
			['specName'] = 'Beast Mastery';
			['iconName'] = "ABILITY_HUNTER_BESTIALDISCIPLINE";
			['fileId'] = 461112;
		},
		[254] = { -- Marksmanship Hunter
			['specId'] = 254;
			['specName'] = 'Marksmanship';
			['iconName'] = "Ability_Hunter_FocusedAim";
			['fileId'] = 236179;
		},
		[255] = { -- Survival Hunter
			['specId'] = 255;
			['specName'] = 'Survival';
			['iconName'] = "Ability_Hunter_Camouflage";
			['fileId'] = 461113;
		},
		[256] = { --Discipline Priest
			['specId'] = 256;
			['specName'] = 'Discipline';
			['iconName'] = "Spell_Holy_PowerWordShield";
			['fileId'] = 135940;
		},
		[257] = { --Holy Priest
			['specId'] = 257;
			['specName'] = 'Holy';
			['iconName'] = "Spell_Holy_GuardianSpirit";
			['fileId'] = 237542;
		},
		[258] = { --Shadow Priest
			['specId'] = 258;
			['specName'] = 'Shadow';
			['iconName'] = "Spell_Shadow_ShadowWordPain";
			['fileId'] = 136207;
		},
		[259] = { --Assassination Rogue
			['specId'] = 259;
			['specName'] = 'Assassination';
			['iconName'] = "Ability_Rogue_Eviscerate";
			['fileId'] = 132292;
		},
		[260] = { --Outlaw Rogue
			['specId'] = 260;
			['specName'] = 'Outlaw';
			['iconName'] = "Ability_BackStab";
			['fileId'] = 132090;
		},
		[261] = { --Subtlety Rogue
			['specId'] = 261;
			['specName'] = 'Subtlety';
			['iconName'] = "Ability_Stealth";
			['fileId'] = 132320;
		},
		[262] = { --Elemental Shaman
			['specId'] = 262;
			['specName'] = 'Elemental';
			['iconName'] = "Spell_Nature_Lightning";
			['fileId'] = 136048;
		},
		[263] = { --Enhancement Shaman
			['specId'] = 263;
			['specName'] = 'Enhancement';
			['iconName'] = "Spell_Shaman_ImprovedStormstrike";
			['fileId'] = 237581;
		},
		[264] = { --Restoration Shaman
			['specId'] = 264;
			['specName'] = 'Restoration';
			['iconName'] = "Spell_Nature_MagicImmunity";
			['fileId'] = 136052;
		},
		[265] = { --Affliction Warlock
			['specId'] = 265;
			['specName'] = 'Affliction';
			['iconName'] = "Spell_Shadow_DeathCoil";
			['fileId'] = 136145;
		},
		[266] = { --Demonology Warlock
			['specId'] = 266;
			['specName'] = 'Demonology';
			['iconName'] = "Spell_Shadow_Metamorphosis";
			['fileId'] = 136172;
		},
		[267] = { --Destruction Warlock
			['specId'] = 267;
			['specName'] = 'Destruction';
			['iconName'] = "Spell_Shadow_RainOfFire";
			['fileId'] = 136186;
		},
		[268] = { --Brewmaster monk
			['specId'] = 268;
			['specName'] = 'Brewmaster';
			['iconName'] = "Monk_Stance_DrunkenOx";
			['fileId'] = 611419;
		},
		[269] = { --Windwalker Monk
			['specId'] = 269;
			['specName'] = 'Windwalker';
			['iconName'] = "Monk_Stance_WhiteTiger";
			['fileId'] = 611420;
 		},
		[270] = { --Mistweaver Monk
			['specId'] = 270;
			['specName'] = 'Mistweaver';
			['iconName'] = "Monk_Stance_WiseSerpent";
			['fileId'] = 611421;
		},
		[577] = { --Havoc DH
			['specId'] = 577;
			['specName'] = 'Havoc';
			['iconName'] = "Ability_DemonHunter_SpecDPS";
			['fileId'] = 1247264;
		},
		[581] = { --Vengeance DH
			['specId'] = 581;
			['specName'] = 'Vengeance';
			['iconName'] = "Ability_DemonHunter_SpecTank";
			['fileId'] = 1247265;
		}
	}
end


function lib:GetCurrentSpecIcon()
	local id = GetSpecializationInfo(GetSpecialization());
	return lib.icons[id]
end

function lib:GetSpecIcon(specId)
	local copy = table.copy(lib.icons[id]);
end

function lib:GetAvailableSpecIcons()
	local result = {};
	for i = 1, GetNumSpecializations(), 1 do 
		local id = GetSpecializationInfo(i);
		table.insert(result, lib.icons[id]);
	end
	return result;
end