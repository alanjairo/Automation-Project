## Environment Variable for planetarium-db.db
add variable PLANETARIUMAUTO to environment for automated planetariuim database


## Export Reports
to export file for Jira, use the 
plugin = "json:src/test/resources/reports/json-report.json"
in the TestRunner to have a report generated in JSON file in the @CucumberOptions method

```
Automation-Project
├─ .git
│  ├─ COMMIT_EDITMSG
│  ├─ config
│  ├─ description
│  ├─ FETCH_HEAD
│  ├─ HEAD
│  ├─ hooks
│  │  ├─ applypatch-msg.sample
│  │  ├─ commit-msg.sample
│  │  ├─ fsmonitor-watchman.sample
│  │  ├─ post-update.sample
│  │  ├─ pre-applypatch.sample
│  │  ├─ pre-commit.sample
│  │  ├─ pre-merge-commit.sample
│  │  ├─ pre-push.sample
│  │  ├─ pre-rebase.sample
│  │  ├─ pre-receive.sample
│  │  ├─ prepare-commit-msg.sample
│  │  ├─ push-to-checkout.sample
│  │  └─ update.sample
│  ├─ index
│  ├─ info
│  │  └─ exclude
│  ├─ logs
│  │  ├─ HEAD
│  │  └─ refs
│  │     ├─ heads
│  │     │  ├─ justin-reset
│  │     │  ├─ main
│  │     │  └─ test-justin
│  │     └─ remotes
│  │        └─ origin
│  │           ├─ HEAD
│  │           ├─ main
│  │           ├─ test
│  │           ├─ test-alan
│  │           ├─ test-alex
│  │           ├─ test-femi
│  │           ├─ test-justin
│  │           └─ test-kevin
│  ├─ objects ... // deleted a lot of lines of non-human-readable object names
│  ├─ ORIG_HEAD
│  ├─ packed-refs
│  └─ refs
│     ├─ heads
│     │  ├─ justin-reset
│     │  ├─ main
│     │  └─ test-justin
│     ├─ remotes
│     │  └─ origin
│     │     ├─ HEAD
│     │     ├─ main
│     │     ├─ test
│     │     ├─ test-alan
│     │     ├─ test-alex
│     │     ├─ test-femi
│     │     ├─ test-justin
│     │     └─ test-kevin
│     └─ tags
├─ .gitignore
├─ .idea
│  ├─ .gitignore
│  ├─ encodings.xml
│  ├─ misc.xml
│  ├─ vcs.xml
│  └─ workspace.xml
├─ pom.xml
├─ README.md
└─ src
   ├─ main
   │  └─ java
   │     └─ com
   │        └─ revature
   │           └─ Main.java
   └─ test
      ├─ java
      │  └─ com
      │     └─ revature
      │        ├─ pom
      │        │  └─ PlanetariumStartPage.java
      │        ├─ Setup.java
      │        └─ TestRunner.java
      └─ resources
         ├─ Celestial-Images
         │  ├─ moon-1.jpg
         │  ├─ moon-2.jpg
         │  ├─ moon-3.jpg
         │  ├─ moon-4.jpg
         │  ├─ moon-5.jpg
         │  ├─ planet-1.jpg
         │  ├─ planet-2.jpg
         │  ├─ planet-3.jpg
         │  ├─ planet-4.jpg
         │  └─ planet-5.jpg
         ├─ planetarium-db.db
         └─ setup-reset.sql

```