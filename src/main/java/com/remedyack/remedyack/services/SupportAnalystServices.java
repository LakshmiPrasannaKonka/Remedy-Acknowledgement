package com.remedyack.remedyack.services;

import com.remedyack.remedyack.models.SupportAnalyst;
import com.remedyack.remedyack.models.SupportAnalystLogin;

public interface SupportAnalystServices {
	public int CreateSupportAnalyst(SupportAnalyst supportanalyst);
	public int login(SupportAnalystLogin supportanalystlogin);
}
