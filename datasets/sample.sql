BEGIN TRANSACTION;
CREATE TABLE "Account" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	parent_id VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Account" VALUES('0015D00000d8icHQAQ','Acc02','');
INSERT INTO "Account" VALUES('0015D00000d8ifPQAQ','Acc001','');
CREATE TABLE "Delivery_Item__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	delivery__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery_Item__c" VALUES('a005D000005hqDZQAY','Item1','2020-04-16','Frozen','a015D00000AuiZTQAZ');
INSERT INTO "Delivery_Item__c" VALUES('a005D000005hqDeQAI','Item2','2020-04-09','Refrigerated','a015D00000AuiZTQAZ');
CREATE TABLE "Delivery__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	supplier__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery__c" VALUES('a015D00000AuiZTQAZ','2020-04-03T03:00:00.000Z','Scheduled','0015D00000d8icHQAQ');
INSERT INTO "Delivery__c" VALUES('a015D00000AuiZOQAZ','2020-04-01T03:00:00.000Z','Scheduled','0015D00000d8ifPQAQ');
COMMIT;
