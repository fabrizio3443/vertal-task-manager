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


|Technology         |Purpose                     |Network Access   | Telemetry |Notes                                     |
|-------------------|----------------------------|-----------------|-----------|------------------------------------------|
|`Flutter`          |Cross Platform UI framework |No (By itself)   |No         |Used purely for app logic                 |
|`Dart`             |Application Language        |No               |No         |                                          |
|`SQLite`           |Local Storage               |No               |No         |Encrypted; Source of truth                |
|`PocketBase`       |Optional Sync Backend       |Yes (self-hosted)|No         |Stores shared tasks; fully user-controlled|
|`Docker`           |Backend Deployment          |No (Runtime)     |No         |Used for reproducible self-hosting        |
|`Cryptography/auth`|Passwordless authentication |No               |No         |Private keys never leave the device       |


**Important Note**: *As the development progresses, more dependencies could be added to this list. In case that any of these tools changes its privacy policy, please open a ticket on the project's repository "issues" section.*

## Audit process

Early build branches might include testing versions for auditing purposes which are **NOT** recommended for end users, as they might contain tools that could make use of non-privacy friendly components. The results of these audits will reflect which tools are appropriate for release candidates, and under which configurations/conditions.

The conditions and steps that the every audit process will need to follow might be added in another document, in order to give a clear set of tools and instructions for volunteers that want to contribute to the app's development.
