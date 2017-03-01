# Our Promise

High quality content is hard.

This builder lowers that tall hurdle. If a sophomore cannot produce high quality content with this builder, then we fail.

Please describe any issues you face to help us lower that tall hurdle.

# Usage

On MacOS Terminal

## 1. Setup

Follow prompts to setup dependencies.

```sh
$ curl https://raw.githubusercontent.com/issueapp/builder/master/install | sh
```

## 2. Build

Content is organized under an *Issue Root* folder you chose during setup. To get you started, *official/* folder has been created.

```sh
$ issue open
```

Now, craft your content.

```sh
$ issue new health/diet
```

See [*Issue Root* folder structure](#issue-root-folder-structure).

## 3. View

See what a cover looks like in browser.

```sh
$ issue open official/layouts
```

See what a page looks like in browser.

```sh
$ issue open official/layouts/one-column
```

See what a subpage looks like in browser.

```sh
$ issue open official/layouts/one-column/1
```

## 4. Preview

Feel the interaction with an issue on a mobile device.

```sh
$ issue view official/layouts
```

## 5. Publish

```sh
$ issue push official/layouts
```

# Collaboration

TODO

```sh
$ issue auth user@issue.by
$ issue invite user@issue.by
$ issue pull health/diet
```

# Uninstall

We fail, purge us.

```sh
$ curl https://raw.githubusercontent.com/issueapp/builder/master/uninstall | sh
```

# Miscellaneous

TODO

```sh
$ issue version
$ issue update
$ issue help
```

# Troubleshoot

Fail to refresh page in browser with high CPU usage on pow.

```sh
$ ps ux | grep pow
$ kill <pow pid>
```

# [LICENSE](https://github.com/issueapp/builder/blob/master/LICENSE)

TODO move below to [wiki](https://help.github.com/articles/adding-and-editing-wiki-pages-locally/) and update cross reference

# Issue Root folder structure

You craft contents under an *Issue Root* folder. Contents are grouped under magazine, and issue. So if you want to start a health magazine with a series about diet, exercise, recovery, and growth, it can be structured as:

``` sh
*Issue Root*/health/diet
*Issue Root*/health/exercise
*Issue Root*/health/recovery
*Issue Root*/health/growth
```

## cover page (issue.yml)

The cover page is customized via *issue.yml* file.

Each asset in *issue.yml* has a corresponding source file in *assets/* folder. (TODO custom.css asset is a wart that should be removed)

Each path in *issue.yml* is a page with a corresponding data file. After the cover, top page appears before bottom pages during the preview.

## cover style (styles/_cover.scss)

The cover style is customized by its respective style file: *styles/_cover.scss*.

## Customize issue presentation (styles/_issue.css)

Font, other issue wide style is customized in *styles/_issue.scss*.

## Customize behavior (assets/custom.js)

Dynamic behavior is customized in *assets/custom.js*.

## page data (data/**/*.md)

A page content comes from its respective data file: *data/recovery.md*.

A subpage content comes from its respective data file: *data/recover/1.md*.

Learn more about [page structure](#page-structure).

## page style (styles/**/.scss)

Each page can be customized by its respective style file: *styles/_recovery.scss*. Note: underscore is required before page.

Each subpage can be customized by its respective style file: *styles/recovery/_1.scss*.

# Page Structure

A page is described in two sections: meta, content.

## Meta

TODO describe page meta

## Content

TODO describe page content (mustache, data-media-id, page stack)
