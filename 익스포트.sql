--------------------------------------------------------
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMIN_TABLE
--------------------------------------------------------

  CREATE TABLE "ADMIN_TABLE" 
   (	"ID" VARCHAR2(50 BYTE), 
	"PWD" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table AIRPLANE_TABLE
--------------------------------------------------------

  CREATE TABLE "AIRPLANE_TABLE" 
   (	"ID" VARCHAR2(50 BYTE), 
	"PWD" VARCHAR2(50 BYTE), 
	"AIR_NAME" VARCHAR2(50 BYTE), 
	"AIR_TEL" VARCHAR2(50 BYTE), 
	"ARI_CODE" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PACKAGE
--------------------------------------------------------

  CREATE TABLE "PACKAGE" 
   (	"PACKNO" VARCHAR2(50 BYTE), 
	"PACKNAME" VARCHAR2(50 BYTE), 
	"PACKPRICE" VARCHAR2(50 BYTE), 
	"PACKPLAN" VARCHAR2(50 BYTE), 
	"STARTING_POINT" VARCHAR2(50 BYTE), 
	"DESTINATION" VARCHAR2(50 BYTE), 
	"DEPARTURE_TIME" DATE, 
	"ARRIVAL_TIME" DATE, 
	"TOURIST_SPOT" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table RESERVATION
--------------------------------------------------------

  CREATE TABLE "RESERVATION" 
   (	"RESERNO" NUMBER(5,0), 
	"PACKNO" VARCHAR2(50 BYTE), 
	"ID" VARCHAR2(50 BYTE), 
	"PWD" VARCHAR2(50 BYTE), 
	"PACKNAME" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table TRAVEL
--------------------------------------------------------

  CREATE TABLE "TRAVEL" 
   (	"TRAVEL_NO" NUMBER, 
	"STARTING" VARCHAR2(50 BYTE), 
	"DESTINATION" VARCHAR2(50 BYTE), 
	"AIRPLANE_NAME" VARCHAR2(50 BYTE), 
	"DEPATURE_TIME" DATE, 
	"ARRIVAL_TIME" DATE, 
	"PLAN" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table USER_TABLE
--------------------------------------------------------

  CREATE TABLE "USER_TABLE" 
   (	"ID" VARCHAR2(50 BYTE), 
	"PWD" VARCHAR2(50 BYTE), 
	"NAME" VARCHAR2(50 BYTE), 
	"CITIZEN_NUMBER" VARCHAR2(50 BYTE), 
	"TELL" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"AGE" NUMBER(4,0)
   ) ;
REM INSERTING into ADMIN_TABLE
SET DEFINE OFF;
Insert into ADMIN_TABLE (ID,PWD) values ('admin','1234');
REM INSERTING into AIRPLANE_TABLE
SET DEFINE OFF;
Insert into AIRPLANE_TABLE (ID,PWD,AIR_NAME,AIR_TEL,ARI_CODE) values ('tway','tway1313','티웨이항공','042-022-9901','19904');
Insert into AIRPLANE_TABLE (ID,PWD,AIR_NAME,AIR_TEL,ARI_CODE) values ('asia00','asia11','아시아나항공','042-221-0015','20014');
Insert into AIRPLANE_TABLE (ID,PWD,AIR_NAME,AIR_TEL,ARI_CODE) values ('aoe221','ddee12','대한항공','042-110-9974','901');
REM INSERTING into PACKAGE
SET DEFINE OFF;
Insert into PACKAGE (PACKNO,PACKNAME,PACKPRICE,PACKPLAN,STARTING_POINT,DESTINATION,DEPARTURE_TIME,ARRIVAL_TIME,TOURIST_SPOT) values ('etp2','도쿄기행','1,700,000원','4박5일','인천국제공항','청두공안공항',to_date('23/10/08','RR/MM/DD'),to_date('23/10/09','RR/MM/DD'),'도쿄');
REM INSERTING into RESERVATION
SET DEFINE OFF;
Insert into RESERVATION (RESERNO,PACKNO,ID,PWD,PACKNAME) values (41,'etp2','jenoyzen','1234','도쿄기행');
REM INSERTING into TRAVEL
SET DEFINE OFF;
REM INSERTING into USER_TABLE
SET DEFINE OFF;
Insert into USER_TABLE (ID,PWD,NAME,CITIZEN_NUMBER,TELL,EMAIL,AGE) values ('jenoyzen','1234','박딸기','2932-23232','010-8722-2221','jinyeongtaek@naver.com',20);
Insert into USER_TABLE (ID,PWD,NAME,CITIZEN_NUMBER,TELL,EMAIL,AGE) values ('park2','wlsdyddh2@','박민호','831008-1303299','010-2786-1683','jenoyzen@naver.com',20);
Insert into USER_TABLE (ID,PWD,NAME,CITIZEN_NUMBER,TELL,EMAIL,AGE) values ('parkugogo','rkdalsrn2@','강민구','951008-1422522','010-2828-4554','kang@naver.com',20);
--------------------------------------------------------
--  DDL for Index SYS_C007070
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007070" ON "AIRPLANE_TABLE" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007071
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007071" ON "AIRPLANE_TABLE" ("ARI_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007004
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007004" ON "PACKAGE" ("PACKNO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007058
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007058" ON "PACKAGE" ("TOURIST_SPOT") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007022
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007022" ON "RESERVATION" ("RESERNO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007064
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007064" ON "RESERVATION" ("PWD") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007072
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007072" ON "TRAVEL" ("TRAVEL_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007001
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007001" ON "USER_TABLE" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007055
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007055" ON "USER_TABLE" ("PWD") 
  ;
--------------------------------------------------------
--  Constraints for Table AIRPLANE_TABLE
--------------------------------------------------------

  ALTER TABLE "AIRPLANE_TABLE" ADD UNIQUE ("ARI_CODE") ENABLE;
  ALTER TABLE "AIRPLANE_TABLE" ADD PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table PACKAGE
--------------------------------------------------------

  ALTER TABLE "PACKAGE" ADD UNIQUE ("TOURIST_SPOT") ENABLE;
  ALTER TABLE "PACKAGE" ADD PRIMARY KEY ("PACKNO") ENABLE;
--------------------------------------------------------
--  Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "RESERVATION" ADD UNIQUE ("PWD") ENABLE;
  ALTER TABLE "RESERVATION" ADD PRIMARY KEY ("RESERNO") ENABLE;
--------------------------------------------------------
--  Constraints for Table TRAVEL
--------------------------------------------------------

  ALTER TABLE "TRAVEL" ADD PRIMARY KEY ("TRAVEL_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table USER_TABLE
--------------------------------------------------------

  ALTER TABLE "USER_TABLE" ADD UNIQUE ("PWD") ENABLE;
  ALTER TABLE "USER_TABLE" ADD PRIMARY KEY ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "RESERVATION" ADD CONSTRAINT "RESERVATION_PACKNO_FK" FOREIGN KEY ("PACKNO")
	  REFERENCES "PACKAGE" ("PACKNO") ENABLE;
  ALTER TABLE "RESERVATION" ADD CONSTRAINT "RESERVATION_USERID_FK" FOREIGN KEY ("ID")
	  REFERENCES "USER_TABLE" ("ID") ENABLE;
