CREATE TABLE "country" (
	"country_id" serial NOT NULL,
	"region" serial(255) NOT NULL,
	CONSTRAINT "country_pk" PRIMARY KEY ("country_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "population" (
	"country_id" int NOT NULL,
	"year" int NOT NULL,
	"population" int NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "country_lookup" (
	"name" TEXT NOT NULL,
	"country_id" int NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "suicide" (
	"country_id" int NOT NULL,
	"year" int NOT NULL,
	"suicide_no" int NOT NULL,
	"hdi" int NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "happiness" (
	"country_id" int NOT NULL,
	"year" int NOT NULL,
	"happiness_rank" int NOT NULL,
	"happiness_score" int NOT NULL,
	"standard_error" int NOT NULL,
	"economy" int NOT NULL,
	"family" int NOT NULL,
	"health" int NOT NULL,
	"freedom" int NOT NULL,
	"trust" int NOT NULL,
	"generousity" int NOT NULL,
	"dystopia_residual" int NOT NULL
) WITH (
  OIDS=FALSE
);




ALTER TABLE "population" ADD CONSTRAINT "population_fk0" FOREIGN KEY ("country_id") REFERENCES "country"("country_id");


ALTER TABLE "suicide" ADD CONSTRAINT "suicide_fk0" FOREIGN KEY ("country_id") REFERENCES "country"("country_id");

ALTER TABLE "happiness" ADD CONSTRAINT "happiness_fk0" FOREIGN KEY ("country_id") REFERENCES "country"("country_id");

