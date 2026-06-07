# Project Management Database Schema

## Objective
This project designs a normalized relational database schema for a project management system using MySQL.

## Dataset Reference
A public project/task management dataset from Kaggle can be used as a reference.

Source:
https://www.kaggle.com/datasets

Search keyword:
Project Management Tasks Dataset

## Files
- project_schema.sql
- sample_data.sql
- query_result.txt
- README.md

## Core Entities
- Users
- Teams
- Team Members
- Projects
- Milestones
- Tasks
- Task Assignees
- Comments
- Progress Updates

## Normalization
The schema follows 3NF because each table stores one entity, many-to-many relationships use junction tables, and non-key attributes depend only on the primary key.

## Complex Query
The complex query lists all open or in-progress tasks for projects managed by Alice Johnson, ordered by due date.