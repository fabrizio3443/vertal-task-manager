# Overview

Dewit is a Free and Open Source task manager. it's designed to be fast, efficient, and to allow either teams or individuals to manage their tasks with ease.

## Features

1. [Individual usage](docs/features/individual_usage.md)
**Zero-setup required.** Every user can download Dewit and instantly start managing tasks.
- **Local-First:** If a user does not need collaboration, self-hosting is completely optional.
- **Offline:** All data is stored and cached in an encrypted SQLite database on the local device.

2. [Team assignments](docs/features/team_assignments.md)
**Collaboration on demand.** Users can seamlessly "upgrade" a task from personal to shared.
- **Sharing:** A user can select specific tasks to sync with the self-hosted PocketBase instance, making them visible to other authenticated users.
- *Note: Once a personal task is shared, it is uploaded to the self-hosted server and is no longer strictly "local-only."*

3. [Task delegation](docs/features/task_delegation.md)
**Flexible management flows.** A Manager or Team Lead can distribute work using three distinct methods:
- **Direct Assignment:** Manually assigning a task to a specific user.
- **Round Robin:** Randomly distributing tasks among a pool of team members.
- **Self-Selection:** Creating a "Task Pool" where team members can claim tasks themselves.

4. [Privacy](docs/features/privacy.md)
**Your data, your boundaries.**
- **Private by Default:** Every new task begins as 100% private, stored only on the device.
- **Siloed Team Data:** Team tasks are stored on your self-hosted instance, ensuring data never touches third-party clouds.
