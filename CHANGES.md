# Changelog

*Comprehensive list of changes between upstream microblog.pub and this fork.*

- **Replaced the root page with a static (replacable, read below) landing page. As such, notes have been moved to /notes.**

- **Added a customizable navigation bar that's visible to all visitors.**
- - Admin links are additionally shown when logged in.
- - Read below for details on how to change the links.

- **Added the ability to 'mount' static pages under `app/templates/pages`.**
- - File name should be lowercase and end in .html. Sub-directories can be used, but are not listed.
- - Page name is generated from file name. Underscores are replaced with spaces, and the first letter is capitalized.
- - If you make a page named index.html, it will be hidden from the listing and replace the website's root page.
- - If the first line of the file is an HTML comment, it is also displayed in the pages listing.
- - If the file name begins with an underscore, it's considered hidden and won't be shown in listing. It can be accessed without the underscore in the URL.
- - Public pages (and their descriptions/summaries if applicable) are listed under the /pages URL.
- - These pages are loaded as standard templates, thus they need to include the proper Jinja blocks.

- **Added `analytics_code` and `header_links` config options.**
- - Analytics code is optional HTML added at the end of the body. Note that CSP policy ('self' and subdomains) still applies. This code is only present when all the following is true: The page is public (Be it a note/article or custom page), The DNT (Do not track) header is NOT present in the request, and the visitor is NOT logged in as an admin.
- - Header links is an optional K/V in the format of Text: Link. If the link begins with an @, then a reverse page lookup is performed.

- **Error pages have been modified slightly.**

- **Default Content Security Policy (CSP) has been expanded to include wildcard subdomains and inline styles.**

- **A few theme/style adjustments, mainly colors and fonts.**

- **Articles listing & display has been changed.**
- - A truncated version is displayed in the listing page.
- - Estimated reading time is also shown.

- **2FA (TOTP) was added to admin login.**
- - Currently can't be disabled (without reverting the code yourself), this will change eventually.
- - TOTP secret is the `secret` of `profile.toml` (Note that you will have to base32-encode it AS UTF-8 and manually import that to your 2FA app of choice.)