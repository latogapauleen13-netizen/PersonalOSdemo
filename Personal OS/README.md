# LIFE RPG

A dependency-free browser prototype for a personal life operating system.

## Run on Windows

Double-click `run-life-rpg.bat`. It starts a local server and opens `http://localhost:8000/index.html` in your browser. To stop the server, double-click `stop-life-rpg.bat`.

The website is also installable as an app. When opened from `http://localhost:8000` or a hosted HTTPS address, use the browser menu and choose **Install LIFE RPG** or **Add to home screen**. Direct `file://` opening works for the website but cannot install the offline app shell.

Python must be installed and available as `python`. No Node.js or build step is required.

## Publish On GitHub

Create a GitHub repository, upload this entire folder to the `main` branch, then open **Settings > Pages** and set the source to **GitHub Actions**. The included workflow will publish the full website automatically at `https://YOUR-USERNAME.github.io/YOUR-REPOSITORY/`.

## Included

- Level 1 starting state with empty, user-built collections
- Today-first Home dashboard with priorities, editable time blocks, and shared quests
- Quest creation, completion, reopening, XP, levels, streak display, and toast feedback
- Nursing school buckets, color tags, weekly progress, Eisenhower summary, and subjects/topics
- Career projects, VELAR measurable goals, and flexible VELAR workspace rows
- Monday-to-Sunday Health tracker for food, sleep, and exercise
- Finance balance calculation, optional money sources, and income/expense entries
- Character stats, achievements, and weekly save point reflection
- Responsive desktop sidebar and mobile navigation
- Browser persistence through `localStorage`
- Google Calendar connection UI boundary ready for a real OAuth service

The app intentionally keeps data local for this runnable prototype. A production backend can replace the `loadState` and `saveState` functions in `app.js` with Supabase calls. Google Calendar is represented by the shared time-block boundary and Settings connection action; live OAuth/API credentials are still required to sync a real calendar. Nursing entries create a linked Nursing quest automatically so the same work is not entered twice.
