# Windows RM Local Admins

This scirpt is for the removal of users from the Windows Administrator gorup.

## Getting Started

This script is meant for the removal of users from the Windows Administrator group. Users that should remain in the Administrator group are defined in the script. If you are using Group Polices, Logon Scripts, or third party software such as JumpCloud you will need to run this as a schduled task to remove users that may be added back by automated means.

This script also logs when users are removed so depending on the run frequency it may be beneficial to turn this off.