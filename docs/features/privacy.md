# Privacy

This app is 100% Free and Open Source Software. It's built by a privacy advocate for privacy advocates. **NO data is collected by the developer**, and all tasks marked as private never leave the device.

The app uses third-party technologies for development and optional self-hosted backend functionality, such as PocketBase. **These technologies are configured by this project, to the extent reasonably possible and verifiable, to operate without telemetry, analytics, or unsolicited network access**, according to documented privacy guidelines and audit results. Some upstream tools enable convenience features (such as update checks or analytics) by default; **Vertal explicitly disables or avoids these behaviors as part of its privacy baseline**. Server data is fully controlled by the user.

## Our definition of privacy

For Vertal, "privacy" means autonomy.

A component is considered privacy-compliant only if it emits **zero network traffic unless explicitly initiated by a user action for a clearly defined purpose**.

This includes disabling:

- Automatic update checks
- Crash reporting
- Usage analytics
- Dynamic asset fetching (e.g. fonts, images, etc.)

## Dependency list

In order to keep track of every technology used and whether or not they eventually change their privacy policies, this section will cover every third-party dependency that this software uses:


|Technology         |Purpose                     |Network Access   | Telemetry |Network Trigger             |Notes                                     |
|-------------------|----------------------------|-----------------|-----------|----------------------------|------------------------------------------|
|`Flutter`          |Cross Platform UI framework |No (Runtime)     |No         |None                        |Used purely for app logic                 |
|`Dart`             |Application Language        |No (Runtime)     |No         |None                        |                                          |
|`SQLite`           |Local Storage               |No               |No         |None                        |Encrypted; Source of truth                |
|`PocketBase`       |Optional Sync Backend       |Yes (self-hosted)|No         |User-initiated sync         |Stores shared tasks; fully user-controlled|
|`Docker`           |Backend Deployment          |No (Runtime)     |No         |Not applicable for the user |Used for reproducible self-hosting        |
|`Cryptography/auth`|Passwordless authentication |No               |No         |None                        |Private keys never leave the device       |


**Important Note**: *As the development progresses, more dependencies could be added to this list. In case that any of these tools changes its privacy policy, please open a ticket on the project's repository "issues" section.*

### Technology explanation

The following section will cover a brief explanation of every technology listed in the previous table and how each works, in order to provide information about whether or not the tool is privacy-compliant by default, and how we configure it to make it compliant.

#### Flutter

Flutter is an open source, built-time framework being used in order to generate the structure of the project. Even though for Developers it does have components that trigger telemetry and analytics by default, this isn't a risk for the user, since once packaged, it becomes part of a compiled artifact, and not a third-party service or running engine.

For the user Flutter does not:

- initiate network traffic

- run independently

- update itself

- collect telemetry at runtime

If you are a contributing developer, please check the development and auditing manuals. But as a head start, we recommend disabling these as soon as you start using Dart and Flutter:

```bash
flutter config --no-analytics
dart --disable-analytics
```

#### Dart

Dart is an open source, client-optimized programming language developed and stewarded by Google. It's core libraries are open source too. It's the primary language being used in the project, in order to easily mantain it as a cross-platform tool. 

Dart does not run as a background service, nor does it dials any server by default. It's not made in a way to emit network traffic independently of app code.

To answer it clearly: it cannot communicate with other services using the internet unless it's explicitly ordered to do so by the developer. 

And the most important: it's inspectable and auditable.

#### SQLite

SQLite is an open source C-language library that implements a small, fast, self-contained, high-reliability, fully featured, SQL database engine (sqlite organization).

It lacks:

- Daemon processes directly running in the background
- The need of a connection with external servers

And it's a good fit because:

- It operates on local files only
- Stores files in a secure way
- Allows for encrypted data storage

Being an embedded database engine technology makes it the perfect choice for this privacy-focused project.

### Risks to avoid during development

Flutter contains functions that invoke libraries from Google's official servers (google_fonts packages). Using these packages are a threat to our privacy model, since they require to automatically fetch the packages over the internet. In order to avoid this, all fonts will be manually curated, downloaded and packaged within the app in order to avoid the need to establish a connection with Google's servers. 

## Audit process

Early build branches might include testing versions for auditing purposes which are **NOT** recommended for end users, as they might contain tools that could make use of non-privacy friendly components. The results of these audits will reflect which tools are appropriate for release candidates, and under which configurations/conditions.

The conditions and steps that every audit process will need to follow might be added in another document, in order to give a clear set of tools and instructions for volunteers that want to contribute to the app's development.
