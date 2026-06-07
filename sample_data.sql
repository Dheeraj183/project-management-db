USE project_management_db;

INSERT INTO users (full_name, email, role) VALUES
('Alice Johnson', 'alice@example.com', 'Project Manager'),
('Bob Smith', 'bob@example.com', 'Developer'),
('Carol Lee', 'carol@example.com', 'Designer'),
('David Kim', 'david@example.com', 'QA Engineer'),
('Emma Brown', 'emma@example.com', 'Business Analyst');

INSERT INTO teams (team_name) VALUES
('Alpha Team'),
('Beta Team'),
('Data Team'),
('Design Team'),
('QA Team');

INSERT INTO team_members (team_id, user_id, joined_date) VALUES
(1, 1, '2025-01-01'),
(1, 2, '2025-01-02'),
(2, 3, '2025-01-03'),
(3, 4, '2025-01-04'),
(4, 5, '2025-01-05');

INSERT INTO projects (project_name, description, team_id, manager_id, start_date, end_date, status) VALUES
('Website Redesign', 'Redesign company website', 1, 1, '2025-02-01', '2025-06-30', 'Active'),
('Mobile App Development', 'Build customer mobile app', 1, 1, '2025-03-01', '2025-09-30', 'Active'),
('Data Dashboard', 'Create analytics dashboard', 3, 5, '2025-01-15', '2025-05-30', 'Active'),
('QA Automation', 'Automate regression testing', 5, 4, '2025-04-01', '2025-08-15', 'Planning'),
('CRM Integration', 'Integrate CRM with internal tools', 2, 5, '2025-02-10', '2025-07-10', 'Active');

INSERT INTO milestones (project_id, milestone_name, due_date, status) VALUES
(1, 'UI Wireframes Complete', '2025-03-15', 'Completed'),
(1, 'Frontend Development', '2025-05-15', 'In Progress'),
(2, 'API Development', '2025-06-01', 'In Progress'),
(3, 'Dashboard Prototype', '2025-04-10', 'Completed'),
(5, 'CRM Testing', '2025-06-20', 'Pending');

INSERT INTO tasks (project_id, milestone_id, task_title, task_description, priority, status, due_date, created_by) VALUES
(1, 2, 'Create homepage layout', 'Develop responsive homepage layout', 'High', 'Open', '2025-05-01', 1),
(1, 2, 'Build navigation menu', 'Create reusable navigation component', 'Medium', 'In Progress', '2025-05-05', 1),
(2, 3, 'Create login API', 'Develop authentication endpoint', 'High', 'Open', '2025-05-10', 1),
(3, 4, 'Build KPI charts', 'Create dashboard visualizations', 'Medium', 'Completed', '2025-04-08', 5),
(5, 5, 'Test CRM sync', 'Validate CRM data transfer', 'High', 'Open', '2025-06-15', 5);

INSERT INTO task_assignees (task_id, user_id) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 4),
(5, 4);

INSERT INTO comments (task_id, user_id, comment_text) VALUES
(1, 1, 'Please finish the homepage layout first.'),
(2, 2, 'Navbar component is halfway done.'),
(3, 1, 'Login API should include validation.'),
(4, 5, 'KPI charts are reviewed.'),
(5, 4, 'CRM sync testing started.');

INSERT INTO progress_updates (task_id, progress_percent, update_note, updated_by) VALUES
(1, 20, 'Initial layout completed', 2),
(2, 50, 'Navbar desktop version completed', 2),
(3, 10, 'API setup started', 2),
(4, 100, 'Charts completed', 4),
(5, 30, 'Basic CRM sync test completed', 4);