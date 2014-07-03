--potential queries for reports

--total leads:
SELECT COUNT(DISTINCT LeadId) FROM leadtable


--open leads:
SELECT COUNT(DISTINCT LeadId) from leadtable where StateCode = 0

--Lead Info, with Opportunity FK 
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

--Opportunity Info
INSERT OVERWRITE DIRECTORY '/OpportunityQuery' 
SELECT	OT.OpportunityId,
		OT.CampaignIdName,
		OT.OwnerId,
		OT.OwnerIdName,
		OT.OwningTeam,
		OT.OriginatingLeadId,
		OT.ContactId,
		OT.new_SalesStage,
		OT.EstimatedCloseDate,
		OT.ActualCloseDate
FROM opportunitytable OT



--Account Info
SELECT	AT.AccountId,
		AT.mbs_countryIdName,
		AT.mbs_stateIdName,
		AT.OwnerId,
		AT.OwnerIdName,
		AT.PrimaryContactId,
		AT.PrimaryContactIdName
FROM accounttable AT
