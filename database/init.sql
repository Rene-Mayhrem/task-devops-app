CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tasks (
    id SERIAL PRIMARY KEY,
    project_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    status VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (project_id) REFERENCES projects(id) ON DELETE CASCADE
);

INSERT INTO projects (name, description) VALUES
('Project 1', 'Description for project 1'),
('Project 2', 'Description for project 2');

INSERT INTO tasks (project_id, name, description, status) VALUES
(1, 'Task 1', 'Description for task 1', 'To Do'),
(1, 'Task 2', 'Description for task 2', 'In Progress'),
(2, 'Task 3', 'Description for task 3', 'Completed');