
DROP TABLE IF EXISTS heart_data;

CREATE TABLE "heart_data" (
    "age" INT,
    "sex" BOOLEAN,
    "cp" INT,
    "trestbps" INT,
    "chol" INT,
    "fbs" BOOLEAN,
    "restecg" INT,
    "thalach" INT,
    "exang" BOOLEAN,
    "oldpeak" FLOAT,
    "slope" INT,
    "num" BOOLEAN
);

-- Confirm table creation and data import
SELECT * from heart_data;