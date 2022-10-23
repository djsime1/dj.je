# microblog.pub (and then some)

Forked and modified to fit my personal needs.  
As such, strong documentation for my modifications doesn't exist besides [`CHANGES.md`](https://github.com/djsime1/dj.je/blob/main/CHANGES.md).  
Official upstream docs can be found at [docs.microblog.pub](https://docs.microblog.pub).

[![builds.sr.ht status](https://builds.sr.ht/~tsileo/microblog.pub.svg)](https://builds.sr.ht/~tsileo/microblog.pub?)
[![AGPL 3.0](https://img.shields.io/badge/license-AGPL_3.0-blue.svg?style=flat)](https://git.sr.ht/~tsileo/microblog.pub/tree/v2/item/LICENSE)

Instances in the wild:

 - [dj.je](https://dj.je)

**If you are running this fork, feel free to PR your site into this list!**  
Check the [upstream README](https://git.sr.ht/~tsileo/microblog.pub/tree/v2/item/README.md) for a list of instances running the upstream version.  
There are still some rough edges, but the server is mostly functional.

## Features

 - Implements the [ActivityPub](https://activitypub.rocks/) server to server protocol
    - Federate with all the other popular ActivityPub servers like Pleroma, PixelFed, PeerTube, Mastodon...
    - Consume most of the content types available (notes, articles, videos, pictures...)
 - Exposes your ActivityPub profile as a minimalist microblog
    - Author notes in Markdown, with code highlighting support
    - Dedicated section for articles/blog posts (enabled when the first article is posted)
 - Lightweight
    - Uses SQLite, and Python 3.10+
    - Can be deployed on small VPS
 - Privacy-aware
    - EXIF metadata (like GPS location) are stripped before storage
    - Every media is proxied through the server
    - Strict access control for your outbox enforced via HTTP signature
 - **No** Javascript
    - The UI is pure HTML/CSS
    - Except tiny bits of hand-written JS in the note composer to insert emoji and add alt text to images
 - IndieWeb citizen
    - [IndieAuth](https://www.w3.org/TR/indieauth/) support (OAuth2 extension)
    - [Microformats](http://microformats.org/wiki/Main_Page) everywhere
    - [Micropub](https://www.w3.org/TR/micropub/) support
    - Sends and processes [Webmentions](https://www.w3.org/TR/webmention/)
    - RSS/Atom/[JSON](https://www.jsonfeed.org/) feed
 - Easy to backup
    - Everything is stored in the `data/` directory: config, uploads, secrets and the SQLite database.

## Getting started

First familiarize yourself with the [`CHANGES.md` list](https://github.com/djsime1/dj.je/blob/main/CHANGES.md), then check out the [upstream documentation](https://docs.microblog.pub).  

## Credits

 - [Thomas Sileo (tsileo)](https://hexa.ninja/)
 - Emoji from [Twemoji](https://twemoji.twitter.com/)
 - Awesome custom goose emoji from [@pamela@bsd.network](https://bsd.network/@pamela)


## Contributing

This fork's development takes place on [GitHub](https://github.com/djsime1/dj.je). Since upstream changes are frequently pulled in, you should probably contribute there instead of here!

Upstream development takes place on [sourcehut](https://sr.ht/~tsileo/microblog.pub/)

 - [Project](https://sr.ht/~tsileo/microblog.pub/)
 - [Issue tracker](https://todo.sr.ht/~tsileo/microblog.pub)
 - [Mailing list](https://sr.ht/~tsileo/microblog.pub/lists)

Contributions are welcomed, check out the [documentation](https://docs.microblog.pub) for more details.


## License

The project is licensed under the GNU AGPL v3 LICENSE (see the LICENSE file).
