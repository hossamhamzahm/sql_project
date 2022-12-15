-- UP MIGRATION
CREATE TABLE IF NOT EXISTS day(
    day_id INTEGER,
    hour_1_course_code VARCHAR(12) REFERENCES course(course_code) DEFAULT NULL,
    hour_2_course_code VARCHAR(12) REFERENCES course(course_code) DEFAULT NULL,
    hour_3_course_code VARCHAR(12) REFERENCES course(course_code) DEFAULT NULL,
    hour_4_course_code VARCHAR(12) REFERENCES course(course_code) DEFAULT NULL,
    hour_5_course_code VARCHAR(12) REFERENCES course(course_code) DEFAULT NULL,
    hour_6_course_code VARCHAR(12) REFERENCES course(course_code) DEFAULT NULL,
    hour_7_course_code VARCHAR(12) REFERENCES course(course_code) DEFAULT NULL,
    hour_8_course_code VARCHAR(12) REFERENCES course(course_code) DEFAULT NULL,
    hour_9_course_code VARCHAR(12) REFERENCES course(course_code) DEFAULT NULL,
    hour_10_course_code VARCHAR(12) REFERENCES course(course_code) DEFAULT NULL,
    hour_11_course_code VARCHAR(12) REFERENCES course(course_code) DEFAULT NULL,
    hour_12_course_code VARCHAR(12) REFERENCES course(course_code) DEFAULT NULL,

    PRIMARY KEY(day_id)
);


-- DOWN MIGRATION 
DROP TABLE IF EXISTS day;