# User Dependencies
Below are the dependencies need to be added into your pom.xml file into the maven project.
View as Code to copy and paste:
<!-- https://mvnrepository.com/artifact/org.seleniumhq.selenium/selenium-java -->
**Selenium**:
<dependency>
    <groupId>org.seleniumhq.selenium</groupId>
    <artifactId>selenium-java</artifactId>
    <version>4.23.0</version>
</dependency>

**Cucumber**:
<dependency>
    <groupId>io.cucumber</groupId>
    <artifactId>cucumber-java</artifactId>
    <version>6.1.1</version>
    <scope>test</scope>
</dependency>

**Cucumber/Junit**:
<dependency>
    <groupId>io.cucumber</groupId>
    <artifactId>cucumber-junit</artifactId>
    <version>6.1.1</version>
    <scope>test</scope>
</dependency>

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
│  ├─ objects
│  │  ├─ 02
│  │  │  ├─ 2cbad2441a298ffa0088b3293fde2f7fd1d662
│  │  │  └─ 78164ef881ca8444de6a5d12166742e4b79d06
│  │  ├─ 03
│  │  │  └─ 888880ce804867cf614ddd8c20af20ec91d478
│  │  ├─ 05
│  │  │  └─ ff3154f0d72f86beb6a982ee739bd0f265cb90
│  │  ├─ 07
│  │  │  └─ c373bd96a77b1f14a9bd81368057e08c518af9
│  │  ├─ 09
│  │  │  └─ 57f7b97bb146e771c81869b2f5e12d3d44ece9
│  │  ├─ 21
│  │  │  └─ d4651935b35cc1773f249718e74458e1ab77b5
│  │  ├─ 22
│  │  │  └─ e117719f416237b5412dd0089b05af251dc43a
│  │  ├─ 24
│  │  │  └─ 64d8775fd2f23b07db439fc8d8bc05720af987
│  │  ├─ 2a
│  │  │  └─ d57c14f0f5af0f0962413b7b394dfbc1514d56
│  │  ├─ 33
│  │  │  └─ 16262ece4fdd210f2ceb82054d4e4dab0598d3
│  │  ├─ 35
│  │  │  └─ 458aa1ccbfc9a6418f43bff5a22cddb27916e3
│  │  ├─ 37
│  │  │  └─ 90694c1283e3738ed7e05208638d0468a1727a
│  │  ├─ 57
│  │  │  └─ 141e4d4f50b6f3891681e7ec7b9c0f28a03ba6
│  │  ├─ 61
│  │  │  └─ 11a9a788752a4b5f9ce23bacb8c0c9b0ef640b
│  │  ├─ 67
│  │  │  └─ c1d5ee6aea4c0bd618c6a56fdae5a78e5ea51e
│  │  ├─ 6b
│  │  │  └─ d917aecda4d8d565f4efab75c3f73f1c1f2048
│  │  ├─ 78
│  │  │  ├─ 90188efc5305211095128e0606ca364e441481
│  │  │  └─ a8a3fa3284f56c57fca972fe3d8b0091791ebe
│  │  ├─ 79
│  │  │  └─ f08f5c6e3e26a9d03a51ce5b0078ea1b639d09
│  │  ├─ 7f
│  │  │  └─ 42367a5cbd4dcec362631b9fac0b9997605f47
│  │  ├─ 90
│  │  │  └─ 8c24f665aebcbeecb444925310f927ff07ac3e
│  │  ├─ 92
│  │  │  └─ bf140f459600b5c6a06d41c72fc626f849081b
│  │  ├─ 96
│  │  │  └─ 95bd34f2bec68a257c0986d274e04e12dd525b
│  │  ├─ 9a
│  │  │  └─ 230632a22b37cfd19c015366523e079d7e5346
│  │  ├─ a3
│  │  │  └─ 69d4b41f0c876de3472a718dfad76823b1c70a
│  │  ├─ a9
│  │  │  └─ b75bc7bfc0877e31dad5783f34c0bc3f004c83
│  │  ├─ af
│  │  │  └─ ad77c2197f344f0ba22bdbddd8b2d4072b3988
│  │  ├─ bf
│  │  │  └─ de7f306cda928cc8330fec52121402dbd766bf
│  │  ├─ c0
│  │  │  └─ a8e631b508a1ad82ff7a412703bd359fee5638
│  │  ├─ cb
│  │  │  └─ ec3869fa148ae47765b952a596fc952e470a31
│  │  ├─ cc
│  │  │  └─ 07f5b0594dd0b50e7a9da67306d540fa12deaf
│  │  ├─ cd
│  │  │  ├─ 8af899cdfe35400f5bf530814eb82179386fe8
│  │  │  └─ 924b49fc73e3c04dd328d2b3e0ab1f2672db41
│  │  ├─ d0
│  │  │  └─ 2eb527447a187d1e384c0ebbad1b21f40ad85d
│  │  ├─ d5
│  │  │  └─ 24c7ec7b01250323c2c6a346db2370bbcbb36a
│  │  ├─ e4
│  │  │  └─ 63e9f283d5d783eeae434680eaab18aa04e55c
│  │  ├─ e6
│  │  │  └─ 9de29bb2d1d6434b8b29ae775ad8c2e48c5391
│  │  ├─ ed
│  │  │  └─ dee6443b2654c38b4860cfa30d7d7a02130147
│  │  ├─ ee
│  │  │  └─ 7dd40835d2ac16e73484b7b232d6d7f2e79958
│  │  ├─ f1
│  │  │  └─ fee0ced9671ceff8aa45c4cfc811132d2b9033
│  │  ├─ f2
│  │  │  └─ 478d3f8e71053c89368220efceab2d8dd7819b
│  │  ├─ f4
│  │  │  └─ 9d077eef16e8d7986cbde7dc0e11b577108579
│  │  ├─ f7
│  │  │  └─ 8754080b640cd5d3dbd0ede917697b6568da5d
│  │  ├─ fb
│  │  │  └─ 94ba74d57fae94c2d0f6ad9755c16358b3e295
│  │  ├─ info
│  │  └─ pack
│  │     ├─ pack-816748037f982f87320f96e47c69e0fd8e206cb5.idx
│  │     └─ pack-816748037f982f87320f96e47c69e0fd8e206cb5.pack
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