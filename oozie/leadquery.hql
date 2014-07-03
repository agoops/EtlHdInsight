INSERT OVERWRITE DIRECTORY '/LeadQuery' 
SELECT	LT.LeadId, 
		LT.mbs_countryidName, 
		LT.mbs_leadsource, 
		LT.CampaignIdName,
		LT.StateCode, 
		CASE 
			WHEN LT.StateCode IN(0) THEN 'Open' 
			ELSE 'Closed' 
		END AS Status,
		LT.mbs_ProductIdName,
		LT.CompanyName,
		LT.Subject,
		LT.ContactId,
		LT.ContactIdName,
		LT.mbs_BornOnDate,
		OT.OpportunityId,
		OT.Description
FROM leadtable LT left join opportunitytable OT
	ON (LT.LeadId = OT.OriginatingLeadId) 
ORDER BY LT.mbs_countryidName, LT.mbs_leadsource, LT.StateCode