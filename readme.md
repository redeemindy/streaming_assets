## Redeemer Presbyterian Indianapolis Streaming Assets

We use GitHub to maintain our streaming assets. This servics allows us to track changes, roll back things that break stuff, and work remotely when needed.

### Files in this repo:

* __announcementCycle.html__: A webpage which OBS places on screen during the staging time before and after service, which loops through announcements on screen. Editing this page is explained later in this document.
* __On Screen Text > title.txt__: This text file is used to populate the "Title" text scene in OBS. Most often used for various town halls.
* __On Screen Text > lowerthird.txt__: This text file is used to populate the "Lower Third" text scene in OBS. Most often used to place the "Text with Questions" number on screen for town halls.

### Editing the Announcement Cycle

1. Make sure you're editing the latest version of the file using __fetch__ and __pull__. See "Using GitHub" below.
2. Open `announcementCycle.html` in Visual Studio Code.
3. The announcements which cycle on screen start on line 6 or so of the file; each one is preceded by `announcements.push("`. Find the announcements.
4. Make sure the date is correct (first announcement line), then erase any announcements which are no longer needed by deleting the entire row in which it appears _or_, if you think you'll need it again in future weeks, precede it with two slashes (like this: `//`) to keep it from appearing on screen without actually deleting it.
5. Add new announcements using the same format as the exisitng ones: precede the text with `announcements.push("` and follow the text with `");`. __This format is very important.__ In addition, use the code `<br>` to indicate a line break within an announcement, and `&bull;` to separate text with a bullet.
6. View the full announcement loop once in OBS to make sure that the newly-added announcements fit.
7. Save `announcementCycle.html`.
8. __Commit__ and __Push__ your changes to GitHub. See "Using GitHub" below.

### Using GitHub

This is a brief overview. More detailed guides are all over the internet, but here are the basics. For all of these steps, you'll need to make sure GitHub Desktop is open.

#### Fetch

Fetching syncs up your machine with the data stored on GitHub. Do this before making edits.

1. In GitHub Desktop, simply press the "Fetch Origin" button.
2. You may then need to __pull__.

#### Pull

After you've fetched the data from GitHub, it won't apply any changes if you have the file open unless you then pull the changes, applying them to the existing assets.

1. In GitHub Desktop, simply press the "Pull Changes" button.
2. That's literally all.

#### Commit

A "commit" is a set of changes you're uploading to GitHub.

1. In GitHub Desktop, click "Commit to main." You may also type a commit message in the commit message box, which is right above the one labeled "Description," but that's not strictly necessary.
2. Click the "Push to origin" button.

* In GitHub Desktop