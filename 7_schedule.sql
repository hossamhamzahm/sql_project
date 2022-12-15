-- UP MMIGRATION
CREATE TABLE IF NOT EXISTS schedule(
    user_username VARCHAR(30),
    is_stared BOOLEAN,
    is_archived BOOLEAN,
    is_registered BOOLEAN,

    schedule_id INTEGER,
    
    sunday_id INTEGER,
    monday_id INTEGER,
    tuseday_id INTEGER,
    wednesday_id INTEGER,
    thursday_id INTEGER,
    
    PRIMARY KEY(schedule_id),
    FOREIGN KEY(user_username) REFERENCES user(user_username),
    FOREIGN KEY(saturday_id) REFERENCES day(day_id) ON DELETE CASCADE ON UPDATE CASCADE
);


-- DOWN MIGRATION
DROP TABLE IF EXISTS schedule; 