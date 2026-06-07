USE project_management_db;

SELECT 
    p.project_name,
    u.full_name AS project_manager,
    t.task_title,
    t.status,
    t.priority,
    t.due_date,
    a.full_name AS assigned_to,
    pu.progress_percent
FROM tasks t
JOIN projects p ON t.project_id = p.project_id
JOIN users u ON p.manager_id = u.user_id
JOIN task_assignees ta ON t.task_id = ta.task_id
JOIN users a ON ta.user_id = a.user_id
LEFT JOIN progress_updates pu ON t.task_id = pu.task_id
WHERE t.status <> 'Completed'
  AND u.full_name = 'Alice Johnson'
ORDER BY t.due_date;