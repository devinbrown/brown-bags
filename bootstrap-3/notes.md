# ~~Twitter~~ Bootstrap 3.0

## Old BS Basics

- CSS & JS Framework for quickly implementing common web-design patterns.
- Creating a great looking webpage is brainless.
- Originally developed w/ Twitter (hence the name), by…
   -  **@mdo** - Mark Otto
   - **@fat** - Jacob
- Powerful grid system
- CSS AutoMagic™ for responsive layouts and mobile devices
- requires jQuery for JS functionality…

### Major Features

### Base CSS

1. Typography
2. Code
3. Tables
4. Forms
5. Buttons
6. Images
7. Icons

### Components

1. Dropdowns
2. Button Groups
3. Button Dropdowns
4. Navs
5. Navbar
6. Breadcrumbs
7. Pagination
8. Labels & Badges
9. Typography (bold, italics, alignment, etc)
10. Thumbnails
11. Alerts
12. Progress Bars
13. Media Object
14. Other / Misc.

### Javascript

1. Transitions
2. Modal
3. Scrollspy
4. Tab
5. Tooltip
6. Popover
7. Alert
8. Button
9. Collapse
10. Carousel
11. Typahead (*\*ahem\* TBLOGS*)
12. Affix

## What's New?

### Browser Support

<ul>
      <li>Chrome (Mac, Windows, iOS, and Android)</li>
      <li>Safari (Mac and iOS only, as Windows has more or less been discontinued)</li>
      <li>Firefox (Mac, Windows)</li>
      <li>Internet Explorer</li>
      <li>Opera (Mac, Windows)</li>
</ul>

#### But What About IE8 & IE9...

>Internet Explorer 8 and 9 are also supported, however, please be aware that many CSS3 properties—e.g., rounded corners and shadows—are not supported by IE8. The placeholder attribute is also not supported in either of these versions.

>In addition, Internet Explorer 8 requires the use of `respond.js` to enable media query support.

```
<meta http-equiv="X-UA-Compatible" content="IE=edge">
```

### Changes

#### Overall

1. Mobile First
2. Naming Conventions
3. No IE7 Support
4. Combined Responsive / CSS Files
5. Retina Image Mixins
6. *Flat Design\**

#### Grid System

1. *Adios* **fluid** grid layout
   - NEW! single grid system (`%` not `px`)
   - more other more subtle mods, for mobile 1st

#### Buttons

1. minor changes to button class naming
2. no longer support the inverse button class

#### Forms

1. no longe support `.form-search`
2. mobile 1st design / layout
   - horizontal forms are stacked
   
#### Icons

1. Using Glyphicons v1.7 / no more PNGS

#### Hero / Jumbotron

1. Scale `font-size` in responsive views

#### Navs / Navbars

1. no longer support `.navbar-search`
2. "overhaul" of navbar styling
   - no more fugly gradients / box-shadow
3. other misc. class / naming changes

#### Dropdowns

1. no more submenu support

#### Modals

1. mostly the same, some class naming / organaztion of containers

#### Carousel

1. total redesign

### Mobile First

<ul>
      <li>Text-based form controls are now 100% wide. Wrap inputs inside <code>&lt;div class="col-*"&gt;&lt;/div&gt;</code> to control input widths.</li>
      <li><code>.badge</code> no longer has contextual (-success,-primary,etc..) classes.</li>
      <li><code>.btn</code> must also use <code>.btn-default</code> to get the "default" button.</li>
      <li><code>.container</code> and <code>.row</code> are now fluid (percentage-based).</li>
      <li>Images are no longer responsive by default. Use <code>.img-responsive</code> for fluid <code>&lt;img&gt;</code> size.</li>
      <li>The icons, now <code>.glyphicon</code>, are now font based. They also require a base and icon class (e.g. <code>.glyphicon .glyphicon-asterisk</code>).</li>
      <li>Typeahead has been dropped, in favor of using <a href="http://twitter.github.io/typeahead.js/">Twitter Typeahead</a>.</li>
      <li>Modal markup has changed significantly. The <code>.modal-header</code>, <code>.modal-body</code>, and <code>.modal-footer</code> sections now get wrapped in <code>.modal-content</code> and <code>.modal-dialog</code> for improved mobile styling and behavior.</li>
      <li>JavaScript events are namespaced. For example, to handle the modal "show" event, use <code>'show.bs.modal'</code>. For tabs "shown" use <code>'shown.bs.tab'</code>, etc..</li>
    </ul>

### Naming Conventions

<div class="table-responsive">
      <table class="table table-bordered table-striped">
        <thead>
          <tr>
            <th>Bootstrap 2.x</th>
            <th>Bootstrap 3.0</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><code>.container-fluid</code></td>
            <td><code>.container</code></td>
          </tr>
          <tr>
            <td><code>.row-fluid</code></td>
            <td><code>.row</code></td>
          </tr>
          <tr>
            <td><code>.span*</code></td>
            <td><code>.col-md-*</code></td>
          </tr>
          <tr>
            <td><code>.offset*</code></td>
            <td><code>.col-md-offset-*</code></td>
          </tr>
          <tr>
            <td><code>.brand</code></td>
            <td><code>.navbar-brand</code></td>
          </tr>
          <tr>
            <td><code>.nav-collapse</code></td>
            <td><code>.navbar-collapse</code></td>
          </tr>
          <tr>
            <td><code>.nav-toggle</code></td>
            <td><code>.navbar-toggle</code></td>
          </tr>
          <tr>
            <td><code>.btn-navbar</code></td>
            <td><code>.navbar-btn</code></td>
          </tr>
          <tr>
            <td><code>.hero-unit</code></td>
            <td><code>.jumbotron</code></td>
          </tr>
          <tr>
            <td><code>.icon-*</code></td>
            <td><code>.glyphicon .glyphicon-*</code></td>
          </tr>
          <tr>
            <td><code>.btn</code></td>
            <td><code>.btn .btn-default</code></td>
          </tr>
          <tr>
            <td><code>.btn-mini</code></td>
            <td><code>.btn-xs</code></td>
          </tr>
          <tr>
            <td><code>.btn-small</code></td>
            <td><code>.btn-sm</code></td>
          </tr>
          <tr>
            <td><code>.btn-large</code></td>
            <td><code>.btn-lg</code></td>
          </tr>
          <tr>
            <td><code>.visible-phone</code></td>
            <td><code>.visible-sm</code></td>
          </tr>
          <tr>
            <td><code>.visible-tablet</code></td>
            <td><code>.visible-md</code></td>
          </tr>
          <tr>
            <td><code>.visible-desktop</code></td>
            <td><code>.visible-lg</code></td>
          </tr>
          <tr>
            <td><code>.hidden-phone</code></td>
            <td><code>.hidden-sm</code></td>
          </tr>
          <tr>
            <td><code>.hidden-tablet</code></td>
            <td><code>.hidden-md</code></td>
          </tr>
          <tr>
            <td><code>.hidden-desktop</code></td>
            <td><code>.hidden-lg</code></td>
          </tr>
          <tr>
            <td><code>.input-small</code></td>
            <td><code>.input-sm</code></td>
          </tr>
          <tr>
            <td><code>.input-large</code></td>
            <td><code>.input-lg</code></td>
          </tr>
          <tr>
            <td><code>.checkbox.inline</code> <code>.radio.inline</code></td>
            <td><code>.checkbox-inline</code> <code>.radio-inline</code></td>
          </tr>
          <tr>
            <td><code>.input-prepend</code> <code>.input-append</code></td>
            <td><code>.input-group</code></td>
          </tr>
          <tr>
            <td><code>.add-on</code></td>
            <td><code>.input-group-addon</code></td>
          </tr>
          <tr>
            <td><code>.thumbnail</code></td>
            <td><code>.img-thumbnail</code></td>
          </tr>
          <tr>
            <td><code>ul.unstyled</code></td>
            <td><code>.list-unstyled</code></td>
          </tr>
          <tr>
            <td><code>ul.inline</code></td>
            <td><code>.list-inline</code></td>
          </tr>
        </tbody>
      </table>
    </div>

## Demo

>Restyle an "ancient" Russian website using nothing but BS 3.0. Timebox to about 2 hours.

- <http://englishrussia.com/>

## Final Thoughts	

### Leveraging BS in a UX / UI Dev-World

Big Question: how can we make this work with a UI that may not necissarily conform to bootstrap out of the box? 

- extracting the compontents we need and using them
- heavy customization of the framework (no need to reinvent a reponsive system)
- alternatively...side projects are a great place to thow this in the mix
