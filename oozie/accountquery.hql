INSERT OVERWRITE DIRECTORY '/AccountQuery'
SELECT  AT.AccountId,
        AT.mbs_countryIdName,
        AT.mbs_stateIdName,
        AT.OwnerId,
        AT.OwnerIdName,
        AT.PrimaryContactId,
        AT.PrimaryContactIdName
FROM accounttable AT