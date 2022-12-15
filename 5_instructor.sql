-- UP MIGRATION
CREATE TABLE IF NOT EXISTS instructor(
    instructor_username VARCHAR(30),
    instructor_faculty VARCHAR(30),
    
    PRIMARY KEY(instructor_username),
    FOREIGN KEY (instructor_username) REFERENCES user(user_username),
    CHECK (instructor_faculty IN ('Engineering', 'Business', 'Computer Science'))
);

ALTER TABLE section 
    ADD instructor_username VARCHAR(30),
    ADD CONSTRAINT FOREIGN KEY (instructor_username) REFERENCES instructor(instructor_username)
    ON DELETE SET NULL;
    

-- DOWN MIGRATION
DROP TABLE IF EXISTS instructor;