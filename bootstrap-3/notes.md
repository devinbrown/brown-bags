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

>Restyle an "ancient" Russian website using nothing but BS 3.0 (aside from colors). Timebox to about 2 hours.

- <http://englishrussia.com/>

## Real world Usage
