# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.2.0] 2024-10-15

### Added
- _tasks.scss created 
    - very basic display properties applied.

### Changed
- Task model updated to check priority (Low Medium High)
- Task index updated to display tasks based on priority
- tasks_helper updated to check if due_date is close (3 days) 
    - displays due date associated with the task if it's within 3 days.

## Removed
- Notice banner from tasks/index.

### Fixed
- n/a

## Security 
- n/a

## [1.1.0] 2024-10-15

### Added
- Link to 'New Task' added to navuser.html.erb 
- This document referenced in the README, as well as a link to access the site

### Changed
- n/a

## Removed
- Notice banner from tasks/index.

### Fixed
- n/a

## Security 
- n/a

## [1.0.0]

### Added
- Initial Task scaffold generated with fields: `task_name`, `description`, `status`, `priority`, `start_date`, `due_date`, `completion_date`, `assigned_to`, `estimated_time`, `actual_time`.

### Changed
- Dropdown menus for `status` with options: "Not Started", "In Progress", "Completed".
- Dropdown menus for `priority` with options: "Low", "Medium", "High".
- Separate fields for `estimated_time` and `actual_time` with inputs for hours and minutes.
- Updated form fields in `app/views/tasks/_form.html.erb` to include separate inputs for hours and minutes for `estimated_time` and `actual_time`.

### Fixed
- n/a
