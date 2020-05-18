function watcher_options_OnLoad()
	
end

function Watcher4_SelectedSpecIcon_Initiate()
	watcher_alternateSpecializations.clear();
	local icons = Watcher4.Libs.SpecIcons.GetAvailableSpecIcons();
	local icon;
	local currentSpec = GetSpecializationInfo(GetSpecialization());
	for i,v in pairs(icons) do
		if v['specId'] ~= currentSpec then
			watcher_alternateSpecializations.addLine(v);
		else
			icon = v;
		end
	end

	SelectedSpecIcon.texture = SelectedSpecIcon:CreateTexture(nil, "OVERLAY");
	SelectedSpecIcon.texture:SetTexture(icon['fileId']);
	SelectedSpecIcon.texture:SetHeight(32);
	SelectedSpecIcon.texture:SetWidth(32);
	SelectedSpecIcon.texture:ClearAllPoints();
	SelectedSpecIcon.texture:SetPoint("CENTER", SelectedSpecIcon, "CENTER", 0, 0);
	SelectedSpecName:SetText(icon['specName']);
end

function Watcher4_SelectedSpecIcon_Update()
	watcher_alternateSpecializations.clear();
	local icons = Watcher4.Libs.SpecIcons.GetAvailableSpecIcons();
	local icon;
	local currentSpec = GetSpecializationInfo(GetSpecialization());
	for i,v in pairs(icons) do
		if v['specId'] ~= currentSpec then
			watcher_alternateSpecializations.addLine(v);
		else
			icon = v;
		end
	end
	SelectedSpecIcon.texture:SetTexture(icon['fileId']);
	SelectedSpecName:SetText(icon['specName']);
end

function watcher_options_selected_spec_OnEnter()
	ShowUIPanel(Watcher4.Tooltip, true);
	Watcher4Tooltip:SetOwner(watcher_options_selected_spec, "ANCHOR_TOPRIGHT");
	Watcher4Tooltip:AddLine("Click to change specialization.", 1, 1, 0, true);
	Watcher4Tooltip:Show();
end

function watcher_options_selected_spec_OnLeave()
	Watcher4Tooltip:ClearLines();
	Watcher4Tooltip:Hide();
end

function watcher_options_selected_spec_OnClick()
	if watcher_alternateSpecializations:IsShown() then
		watcher_alternateSpecializations:Hide();
	else
		watcher_alternateSpecializations:Show();
	end
end

function watcher_alternateSpecializations_OnLoad()
	container = watcher_alternateSpecializations;
	container:Hide();
	container.lines = {};
	container.linePool = {};
	container.addLine = function(icon)
		local newIndex = #watcher_alternateSpecializations.lines+1;
		if(container.linePool[newIndex] == nil) then
			container.linePool[newIndex] = CreateFrame("Button", "Watcher4SpecializationOption"..newIndex, watcher_alternateSpecializations);
		end
		local line = container.linePool[newIndex];
		local newOffset = #watcher_alternateSpecializations.lines*-40;
		print(newOffset);
		line:SetPoint("TOPLEFT", watcher_alternateSpecializations, "TOPLEFT", 0, newOffset);
		line:SetWidth(watcher_alternateSpecializations:GetWidth());
		line:SetHeight(40);
		line.specId = icon['specId'];
		line.specName = icon['specName'];
		table.insert(watcher_alternateSpecializations.lines, line);
		watcher_alternateSpecializations:SetHeight(#watcher_alternateSpecializations.lines*40);

		if(not line.icon) then
			line.icon = CreateFrame("Button", "Watcher4SpecializationOption"..newIndex.."Button", line);
			line.icon:SetHeight(32);
			line.icon:SetWidth(32);
			line.icon:SetPoint("TOPLEFT", line, "TOPLEFT", 11, -4);
			line.icon.texture = line.icon:CreateTexture(nil, "OVERLAY");
			line.icon.texture:SetHeight(32);
			line.icon.texture:SetWidth(32);
			line.icon.texture:ClearAllPoints();
			line.icon.texture:SetPoint("CENTER", line.icon, "CENTER", 0, 0);
		end
		print(icon['fileId']);
		line.icon.texture:SetTexture(icon['fileId']);
		if (not line.fontString) then
			line.fontString = line:CreateFontString("Watcher4SpecializationOption"..newIndex.."Label", "Overlay", "GameFontNormal");
			line.fontString:SetWidth(122);
			line.fontString:SetHeight(32);
			line.fontString:SetFont("Fonts\ARKai_C.ttf", 68);
			line.fontString:SetPoint("TOPLEFT", line, "TOPLEFT", 48, -4);
		end
		line.fontString:SetText(icon['specName']);
		line:SetScript("OnEnter", function()
			ShowUIPanel(Watcher4.Tooltip, true);
			Watcher4Tooltip:SetOwner(line, "ANCHOR_TOPRIGHT");
			Watcher4Tooltip:AddLine("Change to "..line.specName.." specialization.", 1, 1, 0, true);
			Watcher4Tooltip:Show();
		end);
		line:SetScript("OnLeave", function()
			Watcher4Tooltip:ClearLines();
			Watcher4Tooltip:Hide();
		end);
		line:SetScript("OnClick", function()
			local specId = line.specId;
			for i = 1, GetNumSpecializations(), 1 do
				local id = GetSpecializationInfo(i);
				if id == specId then
					SetSpecialization(i);
				end
			end
		end)
	end
	container.clear = function()
		watcher_alternateSpecializations.lines = {};
		watcher_alternateSpecializations:SetHeight(0);
		watcher_alternateSpecializations:Hide();
	end
end