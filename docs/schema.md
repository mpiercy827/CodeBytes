# Schema Information

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
email           | string    | not null, unique
password_digest | string    | not null
session_token   | string    | not null, unique

## courses
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
language    | string    | not null
description | string    | not null

## topics
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
description | string    | not null
course_id   | integer   | not null, foreign key (references courses)

## exercises
column name  | data type | details
-------------|-----------|-----------------------
id           | integer   | not null, primary key
readings     | text      | not null
instructions | text      | not null
topic_id     | integer   | not null, foreign key (references topics)

## solutions
column name  | data type | details
-------------|-----------|-----------------------
id           | integer   | not null, primary key
result       | text      | not null
output       | text      | not null
exercise_id  | integer   | not null, unique, foreign key (references exercises)

## exercise_completions
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users)
exercie_id  | integer   | not null, foreign key (references exercies)

## topic_completions
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users)
topic_id    | integer   | not null, foreign key (references topics)

## course_completions
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users)
course_id   | integer   | not null, foreign key (references courses)
