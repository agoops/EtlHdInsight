DROP TABLE accounttable;
CREATE EXTERNAL TABLE accounttable
(
	PreferredEquipmentIdName string ,
	PrimaryContactIdName string ,
	ModifiedOnBehalfByYomiName string ,
	PreferredSystemUserIdYomiName string ,
	MasterAccountIdYomiName string ,
	CreatedByYomiName string ,
	mbs_SalesDistrictIdName string ,
	mbs_industryidName string ,
	PrimaryContactIdYomiName string ,
	TerritoryIdName string ,
	ModifiedOnBehalfByName string ,
	MasterAccountIdName string ,
	ModifiedByName string ,
	EntityImage_Timestamp bigint ,
	ParentAccountIdName string ,
	mbs_stateidName string ,
	CreatedOnBehalfByName string ,
	TransactionCurrencyIdName string ,
	EntityImage_URL string ,
	EntityImage string ,
	mbs_hierarchylevelidName string ,
	ParentAccountIdYomiName string ,
	CreatedByName string ,
	CreatedOnBehalfByYomiName string ,
	ModifiedByYomiName string ,
	PreferredSystemUserIdName string ,
	mbs_countryidName string ,
	PreferredServiceIdName string ,
	OriginatingLeadIdYomiName string ,
	OriginatingLeadIdName string ,
	DefaultPriceLevelIdName string ,
	mbs_SalesSubDistrictIdName string ,
	Address1_AddressTypeCode int ,
	Address1_City string ,
	Address1_Composite string ,
	Address1_Country string ,
	Address1_County string ,
	Address1_AddressId string ,
	Address1_Fax string ,
	Address1_FreightTermsCode int ,
	Address1_Latitude float ,
	Address1_Line1 string ,
	Address1_Line2 string ,
	Address1_Line3 string ,
	Address1_Longitude float ,
	Address1_Name string ,
	Address1_PostalCode string ,
	Address1_PostOfficeBox string ,
	Address1_PrimaryContactName string ,
	Address1_ShippingMethodCode int ,
	Address1_StateOrProvince string ,
	Address1_Telephone1 string ,
	Address1_Telephone2 string ,
	Address1_Telephone3 string ,
	Address1_UPSZone string ,
	Address1_UTCOffset int ,
	Address2_AddressTypeCode int ,
	Address2_City string ,
	Address2_Composite string ,
	Address2_Country string ,
	Address2_County string ,
	Address2_AddressId string ,
	Address2_Fax string ,
	Address2_FreightTermsCode int ,
	Address2_Latitude float ,
	Address2_Line1 string ,
	Address2_Line2 string ,
	Address2_Line3 string ,
	Address2_Longitude float ,
	Address2_Name string ,
	Address2_PostalCode string ,
	Address2_PostOfficeBox string ,
	Address2_PrimaryContactName string ,
	Address2_ShippingMethodCode int ,
	Address2_StateOrProvince string ,
	Address2_Telephone1 string ,
	Address2_Telephone2 string ,
	Address2_Telephone3 string ,
	Address2_UPSZone string ,
	Address2_UTCOffset int ,
	OwnerId string ,
	OwnerIdName string ,
	OwnerIdYomiName string ,
	OwnerIdDsc int ,
	OwnerIdType int ,
	OwningUser string ,
	OwningTeam string ,
	AccountId string ,
	AccountCategoryCode int ,
	TerritoryId string ,
	DefaultPriceLevelId string ,
	CustomerSizeCode int ,
	PreferredContactMethodCode int ,
	CustomerTypeCode int ,
	AccountRatingCode int ,
	IndustryCode int ,
	TerritoryCode int ,
	AccountClassificationCode int ,
	BusinessTypeCode int ,
	OwningBusinessUnit string ,
	OriginatingLeadId string ,
	PaymentTermsCode int ,
	ShippingMethodCode int ,
	PrimaryContactId string ,
	ParticipatesInWorkflow binary ,
	Name string ,
	AccountNumber string ,
	Revenue decimal ,
	NumberOfEmployees int ,
	Description string ,
	SIC string ,
	OwnershipCode int ,
	MarketCap decimal ,
	SharesOutstanding int ,
	TickerSymbol string ,
	StockExchange string ,
	WebSiteURL string ,
	FtpSiteURL string ,
	EMailAddress1 string ,
	EMailAddress2 string ,
	EMailAddress3 string ,
	DoNotPhone binary ,
	DoNotFax binary ,
	Telephone1 string ,
	DoNotEMail binary ,
	Telephone2 string ,
	Fax string ,
	Telephone3 string ,
	DoNotPostalMail binary ,
	DoNotBulkEMail binary ,
	DoNotBulkPostalMail binary ,
	CreditLimit decimal ,
	CreditOnHold binary ,
	IsPrivate binary ,
	CreatedOn timestamp ,
	CreatedBy string ,
	ModifiedOn timestamp ,
	ModifiedBy string ,
	VersionNumber timestamp ,
	ParentAccountId string ,
	Aging30 decimal ,
	StateCode int ,
	Aging60 decimal ,
	StatusCode int ,
	Aging90 decimal ,
	PreferredAppointmentDayCode int ,
	PreferredSystemUserId string ,
	PreferredAppointmentTimeCode int ,
	Merged binary ,
	DoNotSendMM binary ,
	MasterId string ,
	LastUsedInCampaign timestamp ,
	PreferredServiceId string ,
	PreferredEquipmentId string ,
	ExchangeRate decimal ,
	UTCConversionTimeZoneCode int ,
	OverriddenCreatedOn timestamp ,
	TimeZoneRuleVersionNumber int ,
	ImportSequenceNumber int ,
	TransactionCurrencyId string ,
	CreditLimit_Base decimal ,
	Aging30_Base decimal ,
	Revenue_Base decimal ,
	Aging90_Base decimal ,
	MarketCap_Base decimal ,
	Aging60_Base decimal ,
	YomiName string ,
	CreatedOnBehalfBy string ,
	ModifiedOnBehalfBy string ,
	StageId string ,
	ProcessId string ,
	EntityImageId string ,
	mbs_LeadCountry int ,
	mbs_Segment int ,
	mbs_StateProvidence int ,
	mbs_SubSegment int ,
	new_AccountManager string ,
	new_AccountTS string ,
	new_ATUGroupName string ,
	new_ATUManager string ,
	new_ATUName string ,
	new_CRMServerLicenses int ,
	new_CRMUserLicences int ,
	new_GSXAccountID string ,
	new_Industry string ,
	new_ManagedTerritory string ,
	new_ManagedVertical string ,
	new_MSSalesTPID string ,
	new_Segment string ,
	new_SubSegment string ,
	new_Vertical string ,
	new_VerticalCategory string ,
	mbs_countryid string ,
	mbs_SalesDistrictId string ,
	mbs_SalesSubDistrictId string ,
	mbs_stateid string ,
	mbs_mioid string ,
	mbs_crmrecorduniqueid string ,
	mbs_dunsnumber string ,
	mbs_pccounttotalorg int ,
	mbs_tenantid string ,
	mbs_industryid string ,
	mbs_fiscalcalendarstart timestamp ,
	mbs_itbudget decimal ,
	mbs_itbudget_Base decimal ,
	mbs_pcdevicestotal int ,
	mbs_serverstotal int ,
	mbs_msorgid string ,
	mbs_hierarchylevelid string ,
	mbs_TaxID string

	)



ROW FORMAT DELIMITED FIELDS TERMINATED BY '\001'
LOCATION 'wasb://crmrcluster@crmrstorage.blob.core.windows.net/AccountData';
