# README

Apex–net S.r.l. — the [website](http://www.apexnet.it/).

For questions, contact [@teopost](https://github.com/teopost).

# Getting Started

In order to contribute to this repository you must be a collaborator with push access.

## As an author or an editor

> “For whosoever hath, to him shall be given, and he shall have more abundance: but whosoever hath not, from him shall be taken away even that he hath.”
>
> — *(Mark 4:10-12)*

As an author or an editor you will be able to add new content or modify existing content in the website, but you won’t be able to preview your changes or make your changes publicly available.

It is mostly sufficient that you know the [GitHub Flow in the Browser](https://github.com/blog/1557-github-flow-in-the-browser). Anyway, here’s a quick recap:

0. Create a new branch *(off of `master` branch)*
1. Do some work *(on newly created branch)*
2. Create a pull–request *(from your branch into `master` branch)*
3. Wait for a review

*(At this point you should wait for someone to review your changes and give some feedback.)*

<ol start="5">
  <li>Merge your branch <em>(into <code>master</code> branch)</em></li>
</ol>

> :information_source: Changes you did will not be visible on the website unless a developer or a maintainer makes them publicly available.

## As a developer or a maintainer

> “With great power there must also come — great responsibility!”
>
> — *Stan Lee*

As an author or an editor you will be able to add new content or modify existing content on the website, as well as preview your changes and make changes — yours or anyone else’s — publicly available.

0. Download and install [Mixture](http://mixture.io/#download) (to activate the product you will need create a personal account and a redeem code: ask @teopost.)
1. Clone this repository using git
2. Copy `.githubsettings-template` in `.githubsettings`
3. Open `.githubsettings` with your favorite text editor
4. Insert your **name**, **email** and GitHub **username** and **password** (alternatively you could create a [Personal access token](https://github.com/settings/applications) if you don’t want to use your password.)
5. Save and close

At this point, using Mixture app, you should be able do work and preview your changes locally prior to publishing.

# Collaborate

As an author or an editor, ideally, the only content that you should be touching is under the `collections/` directory. A “collection” is nothing but a class of data that is somehow (i.e., logically) related to each other.

Collections are simply folders inside the `collections/` directory.

Currently following collections is available:

| Name | Directory | Description |
| --- | --- | --- |
| About | `about/` | A single file `about.md` with the contents of the about page. |
| Clients | `clients/` | A file `*.md` per client that contain some metadata. |
| Projects | `projects/` | A file `*.md` per project that contain some metadata as well as descriptive text. |
| Team | `team/` | A file `*.md` per team member that contain some metadata. |

## Markdown

> “Markdown is a plain text formatting syntax.”
>
> — via http://daringfireball.net/projects/markdown/

Collection files (i.e. files with the `*.md` extension inside the `collections/` directory) ought to be written using the [Markdown syntax](http://daringfireball.net/projects/markdown/syntax).

If you're not familiar with [Markdown](http://daringfireball.net/projects/markdown/), you should go and read about it.

> :warning: Whenever it is possible, we suggest using only Markdown syntax in collections. **Avoid writing HTML if not absolutely necessary!**

## Collections

A collection is a group of files. (i.e. a file with the `*.md` extension inside the `collections/` directory)

It doesn’t matter how do you name your files, as long as they have the `.md` file extension; but as a rule of thumb we suggest you use lowercase letters only, replacing any space with a single dash (i.e., `-`) character. (e.g., `foo.md`, `foo-bar.md`, `this-is-a-very-long-file-name.md`, etc.)

Each collection file is made of two parts: “metadata section” and “text section”.

Look at the following example:

```markdown
---
foo: 'bar'
something: true
list_of_things: [ "one", "two", "three" ]
---
# This is a title

Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nullam quis risus
eget urna mollis ornare vel eu leo. Duis mollis, est non commodo luctus, nisi
erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi
porta gravida at eget metus. Vivamus sagittis lacus vel augue laoreet rutrum
faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl
consectetur et. Donec ullamcorper nulla non metus auctor fringilla.

## This is a subtitle

> Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.

- Foo
- Bar
- Baz
```

Anything in between triple dashes (i.e., `---`) is “metadata” (data that isn’t visible to user as–is, but gives additional information other purposes, thanks to its meaning.

Everything that comes after the second `---` is the actually content of the page that will be converted to HTML automatically when publishing the website. This is where you're expected to showing off your Markdown skills.

Below a list currently available collections:

### About

A single file `about.md` with the contents of the about page.

**File(s):** `collection/about/about.md`.

**Metadata:**

| Key | Expected | Description |
| --- | --- | --- |
| published | “true” or “false” | Do not touch this. |

**Contents:** Whatever it’s here will be publicly available on the about page of the website.

### Clients

A file `*.md` per client that contain some metadata.

**File(s):** `collection/clients/*.md`.

**Metadata:**

| Key | Expected | Description |
| --- | --- | --- |
| link | An URL | Where to redirect users when clicked on client’s logo on the homepage. |
| featured | “true” or “false” | Whether the client will be shown on the homepage or not. |
| published | “true” or “false” | Whether the client is publicly available on any page of the website. |

**Contents:** No text is expected at this point.

### Projects

A file `*.md` per project that contain some metadata as well as descriptive text.

**File(s):** `collection/projects/*.md`.

**Metadata:**

| Key | Expected | Description |
| --- | --- | --- |
| title | Text | Title of the project. |
| category | Either “web”, “mobile” or “services” | Category to which the project belongs to. |
| featured | “true” or “false” | Whether the project will be shown on the homepage or not. |
| published | “true” or “false” | Whether the project is publicly available on any page of the website. |
| date | Date & time | Ideally this is the date when the project was made publicly available on the website for the first time ever, but in reality you can put any random date. Projects are ordered according to this data on the projects page. Formatted as `YYYY-MM-DD HH:MM`. |

**Contents:** Whatever it takes to describe the project.

### Team

A file `*.md` per team member that contain some metadata.

**File(s):** `collection/team/*.md`.

| Key | Expected | Description |
| --- | --- | --- |
| name | Text | Full name of the person. |
| role | Either “founder”, “manager”, “sysadmin”, or “developer” | Role that the person has inside the company. |
| published | “true” or “false” | Whether the person is publicly available on any page of the website. |
| date | Date & time | Ideally this is the date when the person was hired for the first time ever, but in reality you can put any random date. People are ordered according to this data on the team page. Formatted as `YYYY-MM-DD HH:MM`. |

**Contents:** No text is expected at this point.

# Publish

Developers and maintainers can publish a newer version of the website using Mixture app on Mac or Windows.

Follow the few steps below and you're good to go:

1. Open Apex-net website in Mixture app
2. Go to "Tools" and click on "Convert to HTML"
3. Go to "Tools" and click on "GitHub Pages"
4. Party! :wink:


