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
