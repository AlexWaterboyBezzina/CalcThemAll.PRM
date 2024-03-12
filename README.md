
# CatchThemAll.PRM

R package for calculating **Pollutant Risk Metric** (PRM) values. The
pollutant risk metric is based on the Queensland Department of
Environment and Science’s **Pesticide Risk Metric** and as such this
package comes pre-loaded with species sensitivity distribution (SSD)
data for the 22 pesticides currently used in the Queensland Department
of Environment and Science *Pesticide Risk Baseline for the Reef 2050
Water Quality Improvement Plan*. The Pollutant Risk metric is an
adaptable version of the pesticide risk metric that allows for the
addition of new pollutants provided SSD information is available and
therefore will be more widely useful.

## Installation

To install this package run this line in your R console:

``` r
devtools::install_github("https://github.com/AlexWaterboyBezzina/CatchThemAll.PRM.git")
```

## Meet the 22 Pre-loaded Pollutants

<p>
<h3>9 Photosystem II (PSII) herbicides:</h3>
<h5>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 640 512" style="height:1em;width:1.25em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#28b78d;overflow:visible;position:relative;"><path d="M160 0c-6.3 0-12 3.7-14.6 9.5L120.6 64.9 63.9 43.2c-5.9-2.3-12.6-.8-17 3.6s-5.9 11.1-3.6 17l21.7 56.7L9.5 145.4C3.7 148 0 153.7 0 160s3.7 12 9.5 14.6l55.4 24.8L43.2 256.1c-2.3 5.9-.8 12.6 3.6 17s11.1 5.9 17 3.6l56.7-21.7 24.8 55.4c2.6 5.8 8.3 9.5 14.6 9.5s12-3.7 14.6-9.5l24.8-55.4 56.7 21.7c5.9 2.3 12.6 .8 17-3.6s5.9-11.1 3.6-17l-21.7-56.7 55.4-24.8c5.8-2.6 9.5-8.3 9.5-14.6s-3.7-12-9.5-14.6l-55.4-24.8 21.7-56.7c2.3-5.9 .8-12.6-3.6-17s-11.1-5.9-17-3.6L199.4 64.9 174.6 9.5C172 3.7 166.3 0 160 0zm0 96a64 64 0 1 1 0 128 64 64 0 1 1 0-128zm32 64a32 32 0 1 0 -64 0 32 32 0 1 0 64 0zm312 16c0-17.7 14.3-32 32-32s32 14.3 32 32v53.4c-14.8 7.7-24 23.1-24 44.6c0 16.8 16 44 37.4 67.2c5.8 6.2 15.5 6.2 21.2 0C624 318 640 290.7 640 274c0-21.5-9.2-37-24-44.6V176c0-44.2-35.8-80-80-80s-80 35.8-80 80v22.7c-9.8-4.3-20.6-6.7-32-6.7c-44.2 0-80 35.8-80 80v21.4c-14.8 7.7-24 23.1-24 44.6c0 16.8 16 44 37.4 67.2c5.8 6.2 15.5 6.2 21.2 0C400 382 416 354.7 416 338c0-21.5-9.2-37-24-44.6V272c0-17.7 14.3-32 32-32s32 14.3 32 32v8V448H32c-17.7 0-32 14.3-32 32s14.3 32 32 32H608c17.7 0 32-14.3 32-32s-14.3-32-32-32H504V280v-8V176z"/></svg>
Ametryn
</p>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 640 512" style="height:1em;width:1.25em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#28b78d;overflow:visible;position:relative;"><path d="M160 0c-6.3 0-12 3.7-14.6 9.5L120.6 64.9 63.9 43.2c-5.9-2.3-12.6-.8-17 3.6s-5.9 11.1-3.6 17l21.7 56.7L9.5 145.4C3.7 148 0 153.7 0 160s3.7 12 9.5 14.6l55.4 24.8L43.2 256.1c-2.3 5.9-.8 12.6 3.6 17s11.1 5.9 17 3.6l56.7-21.7 24.8 55.4c2.6 5.8 8.3 9.5 14.6 9.5s12-3.7 14.6-9.5l24.8-55.4 56.7 21.7c5.9 2.3 12.6 .8 17-3.6s5.9-11.1 3.6-17l-21.7-56.7 55.4-24.8c5.8-2.6 9.5-8.3 9.5-14.6s-3.7-12-9.5-14.6l-55.4-24.8 21.7-56.7c2.3-5.9 .8-12.6-3.6-17s-11.1-5.9-17-3.6L199.4 64.9 174.6 9.5C172 3.7 166.3 0 160 0zm0 96a64 64 0 1 1 0 128 64 64 0 1 1 0-128zm32 64a32 32 0 1 0 -64 0 32 32 0 1 0 64 0zm312 16c0-17.7 14.3-32 32-32s32 14.3 32 32v53.4c-14.8 7.7-24 23.1-24 44.6c0 16.8 16 44 37.4 67.2c5.8 6.2 15.5 6.2 21.2 0C624 318 640 290.7 640 274c0-21.5-9.2-37-24-44.6V176c0-44.2-35.8-80-80-80s-80 35.8-80 80v22.7c-9.8-4.3-20.6-6.7-32-6.7c-44.2 0-80 35.8-80 80v21.4c-14.8 7.7-24 23.1-24 44.6c0 16.8 16 44 37.4 67.2c5.8 6.2 15.5 6.2 21.2 0C400 382 416 354.7 416 338c0-21.5-9.2-37-24-44.6V272c0-17.7 14.3-32 32-32s32 14.3 32 32v8V448H32c-17.7 0-32 14.3-32 32s14.3 32 32 32H608c17.7 0 32-14.3 32-32s-14.3-32-32-32H504V280v-8V176z"/></svg>
Atrazine
</p>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 640 512" style="height:1em;width:1.25em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#28b78d;overflow:visible;position:relative;"><path d="M160 0c-6.3 0-12 3.7-14.6 9.5L120.6 64.9 63.9 43.2c-5.9-2.3-12.6-.8-17 3.6s-5.9 11.1-3.6 17l21.7 56.7L9.5 145.4C3.7 148 0 153.7 0 160s3.7 12 9.5 14.6l55.4 24.8L43.2 256.1c-2.3 5.9-.8 12.6 3.6 17s11.1 5.9 17 3.6l56.7-21.7 24.8 55.4c2.6 5.8 8.3 9.5 14.6 9.5s12-3.7 14.6-9.5l24.8-55.4 56.7 21.7c5.9 2.3 12.6 .8 17-3.6s5.9-11.1 3.6-17l-21.7-56.7 55.4-24.8c5.8-2.6 9.5-8.3 9.5-14.6s-3.7-12-9.5-14.6l-55.4-24.8 21.7-56.7c2.3-5.9 .8-12.6-3.6-17s-11.1-5.9-17-3.6L199.4 64.9 174.6 9.5C172 3.7 166.3 0 160 0zm0 96a64 64 0 1 1 0 128 64 64 0 1 1 0-128zm32 64a32 32 0 1 0 -64 0 32 32 0 1 0 64 0zm312 16c0-17.7 14.3-32 32-32s32 14.3 32 32v53.4c-14.8 7.7-24 23.1-24 44.6c0 16.8 16 44 37.4 67.2c5.8 6.2 15.5 6.2 21.2 0C624 318 640 290.7 640 274c0-21.5-9.2-37-24-44.6V176c0-44.2-35.8-80-80-80s-80 35.8-80 80v22.7c-9.8-4.3-20.6-6.7-32-6.7c-44.2 0-80 35.8-80 80v21.4c-14.8 7.7-24 23.1-24 44.6c0 16.8 16 44 37.4 67.2c5.8 6.2 15.5 6.2 21.2 0C400 382 416 354.7 416 338c0-21.5-9.2-37-24-44.6V272c0-17.7 14.3-32 32-32s32 14.3 32 32v8V448H32c-17.7 0-32 14.3-32 32s14.3 32 32 32H608c17.7 0 32-14.3 32-32s-14.3-32-32-32H504V280v-8V176z"/></svg>
Diuron
</p>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 640 512" style="height:1em;width:1.25em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#28b78d;overflow:visible;position:relative;"><path d="M160 0c-6.3 0-12 3.7-14.6 9.5L120.6 64.9 63.9 43.2c-5.9-2.3-12.6-.8-17 3.6s-5.9 11.1-3.6 17l21.7 56.7L9.5 145.4C3.7 148 0 153.7 0 160s3.7 12 9.5 14.6l55.4 24.8L43.2 256.1c-2.3 5.9-.8 12.6 3.6 17s11.1 5.9 17 3.6l56.7-21.7 24.8 55.4c2.6 5.8 8.3 9.5 14.6 9.5s12-3.7 14.6-9.5l24.8-55.4 56.7 21.7c5.9 2.3 12.6 .8 17-3.6s5.9-11.1 3.6-17l-21.7-56.7 55.4-24.8c5.8-2.6 9.5-8.3 9.5-14.6s-3.7-12-9.5-14.6l-55.4-24.8 21.7-56.7c2.3-5.9 .8-12.6-3.6-17s-11.1-5.9-17-3.6L199.4 64.9 174.6 9.5C172 3.7 166.3 0 160 0zm0 96a64 64 0 1 1 0 128 64 64 0 1 1 0-128zm32 64a32 32 0 1 0 -64 0 32 32 0 1 0 64 0zm312 16c0-17.7 14.3-32 32-32s32 14.3 32 32v53.4c-14.8 7.7-24 23.1-24 44.6c0 16.8 16 44 37.4 67.2c5.8 6.2 15.5 6.2 21.2 0C624 318 640 290.7 640 274c0-21.5-9.2-37-24-44.6V176c0-44.2-35.8-80-80-80s-80 35.8-80 80v22.7c-9.8-4.3-20.6-6.7-32-6.7c-44.2 0-80 35.8-80 80v21.4c-14.8 7.7-24 23.1-24 44.6c0 16.8 16 44 37.4 67.2c5.8 6.2 15.5 6.2 21.2 0C400 382 416 354.7 416 338c0-21.5-9.2-37-24-44.6V272c0-17.7 14.3-32 32-32s32 14.3 32 32v8V448H32c-17.7 0-32 14.3-32 32s14.3 32 32 32H608c17.7 0 32-14.3 32-32s-14.3-32-32-32H504V280v-8V176z"/></svg>
Hexazinone
</p>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 640 512" style="height:1em;width:1.25em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#28b78d;overflow:visible;position:relative;"><path d="M160 0c-6.3 0-12 3.7-14.6 9.5L120.6 64.9 63.9 43.2c-5.9-2.3-12.6-.8-17 3.6s-5.9 11.1-3.6 17l21.7 56.7L9.5 145.4C3.7 148 0 153.7 0 160s3.7 12 9.5 14.6l55.4 24.8L43.2 256.1c-2.3 5.9-.8 12.6 3.6 17s11.1 5.9 17 3.6l56.7-21.7 24.8 55.4c2.6 5.8 8.3 9.5 14.6 9.5s12-3.7 14.6-9.5l24.8-55.4 56.7 21.7c5.9 2.3 12.6 .8 17-3.6s5.9-11.1 3.6-17l-21.7-56.7 55.4-24.8c5.8-2.6 9.5-8.3 9.5-14.6s-3.7-12-9.5-14.6l-55.4-24.8 21.7-56.7c2.3-5.9 .8-12.6-3.6-17s-11.1-5.9-17-3.6L199.4 64.9 174.6 9.5C172 3.7 166.3 0 160 0zm0 96a64 64 0 1 1 0 128 64 64 0 1 1 0-128zm32 64a32 32 0 1 0 -64 0 32 32 0 1 0 64 0zm312 16c0-17.7 14.3-32 32-32s32 14.3 32 32v53.4c-14.8 7.7-24 23.1-24 44.6c0 16.8 16 44 37.4 67.2c5.8 6.2 15.5 6.2 21.2 0C624 318 640 290.7 640 274c0-21.5-9.2-37-24-44.6V176c0-44.2-35.8-80-80-80s-80 35.8-80 80v22.7c-9.8-4.3-20.6-6.7-32-6.7c-44.2 0-80 35.8-80 80v21.4c-14.8 7.7-24 23.1-24 44.6c0 16.8 16 44 37.4 67.2c5.8 6.2 15.5 6.2 21.2 0C400 382 416 354.7 416 338c0-21.5-9.2-37-24-44.6V272c0-17.7 14.3-32 32-32s32 14.3 32 32v8V448H32c-17.7 0-32 14.3-32 32s14.3 32 32 32H608c17.7 0 32-14.3 32-32s-14.3-32-32-32H504V280v-8V176z"/></svg>
Metribuzin
</p>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 640 512" style="height:1em;width:1.25em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#28b78d;overflow:visible;position:relative;"><path d="M160 0c-6.3 0-12 3.7-14.6 9.5L120.6 64.9 63.9 43.2c-5.9-2.3-12.6-.8-17 3.6s-5.9 11.1-3.6 17l21.7 56.7L9.5 145.4C3.7 148 0 153.7 0 160s3.7 12 9.5 14.6l55.4 24.8L43.2 256.1c-2.3 5.9-.8 12.6 3.6 17s11.1 5.9 17 3.6l56.7-21.7 24.8 55.4c2.6 5.8 8.3 9.5 14.6 9.5s12-3.7 14.6-9.5l24.8-55.4 56.7 21.7c5.9 2.3 12.6 .8 17-3.6s5.9-11.1 3.6-17l-21.7-56.7 55.4-24.8c5.8-2.6 9.5-8.3 9.5-14.6s-3.7-12-9.5-14.6l-55.4-24.8 21.7-56.7c2.3-5.9 .8-12.6-3.6-17s-11.1-5.9-17-3.6L199.4 64.9 174.6 9.5C172 3.7 166.3 0 160 0zm0 96a64 64 0 1 1 0 128 64 64 0 1 1 0-128zm32 64a32 32 0 1 0 -64 0 32 32 0 1 0 64 0zm312 16c0-17.7 14.3-32 32-32s32 14.3 32 32v53.4c-14.8 7.7-24 23.1-24 44.6c0 16.8 16 44 37.4 67.2c5.8 6.2 15.5 6.2 21.2 0C624 318 640 290.7 640 274c0-21.5-9.2-37-24-44.6V176c0-44.2-35.8-80-80-80s-80 35.8-80 80v22.7c-9.8-4.3-20.6-6.7-32-6.7c-44.2 0-80 35.8-80 80v21.4c-14.8 7.7-24 23.1-24 44.6c0 16.8 16 44 37.4 67.2c5.8 6.2 15.5 6.2 21.2 0C400 382 416 354.7 416 338c0-21.5-9.2-37-24-44.6V272c0-17.7 14.3-32 32-32s32 14.3 32 32v8V448H32c-17.7 0-32 14.3-32 32s14.3 32 32 32H608c17.7 0 32-14.3 32-32s-14.3-32-32-32H504V280v-8V176z"/></svg>
Prometryn
</p>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 640 512" style="height:1em;width:1.25em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#28b78d;overflow:visible;position:relative;"><path d="M160 0c-6.3 0-12 3.7-14.6 9.5L120.6 64.9 63.9 43.2c-5.9-2.3-12.6-.8-17 3.6s-5.9 11.1-3.6 17l21.7 56.7L9.5 145.4C3.7 148 0 153.7 0 160s3.7 12 9.5 14.6l55.4 24.8L43.2 256.1c-2.3 5.9-.8 12.6 3.6 17s11.1 5.9 17 3.6l56.7-21.7 24.8 55.4c2.6 5.8 8.3 9.5 14.6 9.5s12-3.7 14.6-9.5l24.8-55.4 56.7 21.7c5.9 2.3 12.6 .8 17-3.6s5.9-11.1 3.6-17l-21.7-56.7 55.4-24.8c5.8-2.6 9.5-8.3 9.5-14.6s-3.7-12-9.5-14.6l-55.4-24.8 21.7-56.7c2.3-5.9 .8-12.6-3.6-17s-11.1-5.9-17-3.6L199.4 64.9 174.6 9.5C172 3.7 166.3 0 160 0zm0 96a64 64 0 1 1 0 128 64 64 0 1 1 0-128zm32 64a32 32 0 1 0 -64 0 32 32 0 1 0 64 0zm312 16c0-17.7 14.3-32 32-32s32 14.3 32 32v53.4c-14.8 7.7-24 23.1-24 44.6c0 16.8 16 44 37.4 67.2c5.8 6.2 15.5 6.2 21.2 0C624 318 640 290.7 640 274c0-21.5-9.2-37-24-44.6V176c0-44.2-35.8-80-80-80s-80 35.8-80 80v22.7c-9.8-4.3-20.6-6.7-32-6.7c-44.2 0-80 35.8-80 80v21.4c-14.8 7.7-24 23.1-24 44.6c0 16.8 16 44 37.4 67.2c5.8 6.2 15.5 6.2 21.2 0C400 382 416 354.7 416 338c0-21.5-9.2-37-24-44.6V272c0-17.7 14.3-32 32-32s32 14.3 32 32v8V448H32c-17.7 0-32 14.3-32 32s14.3 32 32 32H608c17.7 0 32-14.3 32-32s-14.3-32-32-32H504V280v-8V176z"/></svg>
Simazine
</p>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 640 512" style="height:1em;width:1.25em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#28b78d;overflow:visible;position:relative;"><path d="M160 0c-6.3 0-12 3.7-14.6 9.5L120.6 64.9 63.9 43.2c-5.9-2.3-12.6-.8-17 3.6s-5.9 11.1-3.6 17l21.7 56.7L9.5 145.4C3.7 148 0 153.7 0 160s3.7 12 9.5 14.6l55.4 24.8L43.2 256.1c-2.3 5.9-.8 12.6 3.6 17s11.1 5.9 17 3.6l56.7-21.7 24.8 55.4c2.6 5.8 8.3 9.5 14.6 9.5s12-3.7 14.6-9.5l24.8-55.4 56.7 21.7c5.9 2.3 12.6 .8 17-3.6s5.9-11.1 3.6-17l-21.7-56.7 55.4-24.8c5.8-2.6 9.5-8.3 9.5-14.6s-3.7-12-9.5-14.6l-55.4-24.8 21.7-56.7c2.3-5.9 .8-12.6-3.6-17s-11.1-5.9-17-3.6L199.4 64.9 174.6 9.5C172 3.7 166.3 0 160 0zm0 96a64 64 0 1 1 0 128 64 64 0 1 1 0-128zm32 64a32 32 0 1 0 -64 0 32 32 0 1 0 64 0zm312 16c0-17.7 14.3-32 32-32s32 14.3 32 32v53.4c-14.8 7.7-24 23.1-24 44.6c0 16.8 16 44 37.4 67.2c5.8 6.2 15.5 6.2 21.2 0C624 318 640 290.7 640 274c0-21.5-9.2-37-24-44.6V176c0-44.2-35.8-80-80-80s-80 35.8-80 80v22.7c-9.8-4.3-20.6-6.7-32-6.7c-44.2 0-80 35.8-80 80v21.4c-14.8 7.7-24 23.1-24 44.6c0 16.8 16 44 37.4 67.2c5.8 6.2 15.5 6.2 21.2 0C400 382 416 354.7 416 338c0-21.5-9.2-37-24-44.6V272c0-17.7 14.3-32 32-32s32 14.3 32 32v8V448H32c-17.7 0-32 14.3-32 32s14.3 32 32 32H608c17.7 0 32-14.3 32-32s-14.3-32-32-32H504V280v-8V176z"/></svg>
Tebuthiuron
</p>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 640 512" style="height:1em;width:1.25em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#28b78d;overflow:visible;position:relative;"><path d="M160 0c-6.3 0-12 3.7-14.6 9.5L120.6 64.9 63.9 43.2c-5.9-2.3-12.6-.8-17 3.6s-5.9 11.1-3.6 17l21.7 56.7L9.5 145.4C3.7 148 0 153.7 0 160s3.7 12 9.5 14.6l55.4 24.8L43.2 256.1c-2.3 5.9-.8 12.6 3.6 17s11.1 5.9 17 3.6l56.7-21.7 24.8 55.4c2.6 5.8 8.3 9.5 14.6 9.5s12-3.7 14.6-9.5l24.8-55.4 56.7 21.7c5.9 2.3 12.6 .8 17-3.6s5.9-11.1 3.6-17l-21.7-56.7 55.4-24.8c5.8-2.6 9.5-8.3 9.5-14.6s-3.7-12-9.5-14.6l-55.4-24.8 21.7-56.7c2.3-5.9 .8-12.6-3.6-17s-11.1-5.9-17-3.6L199.4 64.9 174.6 9.5C172 3.7 166.3 0 160 0zm0 96a64 64 0 1 1 0 128 64 64 0 1 1 0-128zm32 64a32 32 0 1 0 -64 0 32 32 0 1 0 64 0zm312 16c0-17.7 14.3-32 32-32s32 14.3 32 32v53.4c-14.8 7.7-24 23.1-24 44.6c0 16.8 16 44 37.4 67.2c5.8 6.2 15.5 6.2 21.2 0C624 318 640 290.7 640 274c0-21.5-9.2-37-24-44.6V176c0-44.2-35.8-80-80-80s-80 35.8-80 80v22.7c-9.8-4.3-20.6-6.7-32-6.7c-44.2 0-80 35.8-80 80v21.4c-14.8 7.7-24 23.1-24 44.6c0 16.8 16 44 37.4 67.2c5.8 6.2 15.5 6.2 21.2 0C400 382 416 354.7 416 338c0-21.5-9.2-37-24-44.6V272c0-17.7 14.3-32 32-32s32 14.3 32 32v8V448H32c-17.7 0-32 14.3-32 32s14.3 32 32 32H608c17.7 0 32-14.3 32-32s-14.3-32-32-32H504V280v-8V176z"/></svg>
Terbuthylazine
</p>
</h5>
<h3>10 Other herbicides:</h3>
<h5>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 448 512" style="height:1em;width:0.88em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#ff5964;overflow:visible;position:relative;"><path d="M288 0H160 128C110.3 0 96 14.3 96 32s14.3 32 32 32V196.8c0 11.8-3.3 23.5-9.5 33.5L10.3 406.2C3.6 417.2 0 429.7 0 442.6C0 480.9 31.1 512 69.4 512H378.6c38.3 0 69.4-31.1 69.4-69.4c0-12.8-3.6-25.4-10.3-36.4L329.5 230.4c-6.2-10.1-9.5-21.7-9.5-33.5V64c17.7 0 32-14.3 32-32s-14.3-32-32-32H288zM192 196.8V64h64V196.8c0 23.7 6.6 46.9 19 67.1L309.5 320h-171L173 263.9c12.4-20.2 19-43.4 19-67.1z"/></svg>
Haloxyfop (acid)
</p>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 448 512" style="height:1em;width:0.88em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#ff5964;overflow:visible;position:relative;"><path d="M288 0H160 128C110.3 0 96 14.3 96 32s14.3 32 32 32V196.8c0 11.8-3.3 23.5-9.5 33.5L10.3 406.2C3.6 417.2 0 429.7 0 442.6C0 480.9 31.1 512 69.4 512H378.6c38.3 0 69.4-31.1 69.4-69.4c0-12.8-3.6-25.4-10.3-36.4L329.5 230.4c-6.2-10.1-9.5-21.7-9.5-33.5V64c17.7 0 32-14.3 32-32s-14.3-32-32-32H288zM192 196.8V64h64V196.8c0 23.7 6.6 46.9 19 67.1L309.5 320h-171L173 263.9c12.4-20.2 19-43.4 19-67.1z"/></svg>
Imazapic
</p>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 448 512" style="height:1em;width:0.88em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#ff5964;overflow:visible;position:relative;"><path d="M288 0H160 128C110.3 0 96 14.3 96 32s14.3 32 32 32V196.8c0 11.8-3.3 23.5-9.5 33.5L10.3 406.2C3.6 417.2 0 429.7 0 442.6C0 480.9 31.1 512 69.4 512H378.6c38.3 0 69.4-31.1 69.4-69.4c0-12.8-3.6-25.4-10.3-36.4L329.5 230.4c-6.2-10.1-9.5-21.7-9.5-33.5V64c17.7 0 32-14.3 32-32s-14.3-32-32-32H288zM192 196.8V64h64V196.8c0 23.7 6.6 46.9 19 67.1L309.5 320h-171L173 263.9c12.4-20.2 19-43.4 19-67.1z"/></svg>
Metsulfuron methyl
</p>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 448 512" style="height:1em;width:0.88em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#ff5964;overflow:visible;position:relative;"><path d="M288 0H160 128C110.3 0 96 14.3 96 32s14.3 32 32 32V196.8c0 11.8-3.3 23.5-9.5 33.5L10.3 406.2C3.6 417.2 0 429.7 0 442.6C0 480.9 31.1 512 69.4 512H378.6c38.3 0 69.4-31.1 69.4-69.4c0-12.8-3.6-25.4-10.3-36.4L329.5 230.4c-6.2-10.1-9.5-21.7-9.5-33.5V64c17.7 0 32-14.3 32-32s-14.3-32-32-32H288zM192 196.8V64h64V196.8c0 23.7 6.6 46.9 19 67.1L309.5 320h-171L173 263.9c12.4-20.2 19-43.4 19-67.1z"/></svg>
Pendimethalin
</p>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 448 512" style="height:1em;width:0.88em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#ff5964;overflow:visible;position:relative;"><path d="M288 0H160 128C110.3 0 96 14.3 96 32s14.3 32 32 32V196.8c0 11.8-3.3 23.5-9.5 33.5L10.3 406.2C3.6 417.2 0 429.7 0 442.6C0 480.9 31.1 512 69.4 512H378.6c38.3 0 69.4-31.1 69.4-69.4c0-12.8-3.6-25.4-10.3-36.4L329.5 230.4c-6.2-10.1-9.5-21.7-9.5-33.5V64c17.7 0 32-14.3 32-32s-14.3-32-32-32H288zM192 196.8V64h64V196.8c0 23.7 6.6 46.9 19 67.1L309.5 320h-171L173 263.9c12.4-20.2 19-43.4 19-67.1z"/></svg>
Metolachlor
</p>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 448 512" style="height:1em;width:0.88em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#ff5964;overflow:visible;position:relative;"><path d="M288 0H160 128C110.3 0 96 14.3 96 32s14.3 32 32 32V196.8c0 11.8-3.3 23.5-9.5 33.5L10.3 406.2C3.6 417.2 0 429.7 0 442.6C0 480.9 31.1 512 69.4 512H378.6c38.3 0 69.4-31.1 69.4-69.4c0-12.8-3.6-25.4-10.3-36.4L329.5 230.4c-6.2-10.1-9.5-21.7-9.5-33.5V64c17.7 0 32-14.3 32-32s-14.3-32-32-32H288zM192 196.8V64h64V196.8c0 23.7 6.6 46.9 19 67.1L309.5 320h-171L173 263.9c12.4-20.2 19-43.4 19-67.1z"/></svg>
2,4-D
</p>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 448 512" style="height:1em;width:0.88em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#ff5964;overflow:visible;position:relative;"><path d="M288 0H160 128C110.3 0 96 14.3 96 32s14.3 32 32 32V196.8c0 11.8-3.3 23.5-9.5 33.5L10.3 406.2C3.6 417.2 0 429.7 0 442.6C0 480.9 31.1 512 69.4 512H378.6c38.3 0 69.4-31.1 69.4-69.4c0-12.8-3.6-25.4-10.3-36.4L329.5 230.4c-6.2-10.1-9.5-21.7-9.5-33.5V64c17.7 0 32-14.3 32-32s-14.3-32-32-32H288zM192 196.8V64h64V196.8c0 23.7 6.6 46.9 19 67.1L309.5 320h-171L173 263.9c12.4-20.2 19-43.4 19-67.1z"/></svg>
MCPA
</p>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 448 512" style="height:1em;width:0.88em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#ff5964;overflow:visible;position:relative;"><path d="M288 0H160 128C110.3 0 96 14.3 96 32s14.3 32 32 32V196.8c0 11.8-3.3 23.5-9.5 33.5L10.3 406.2C3.6 417.2 0 429.7 0 442.6C0 480.9 31.1 512 69.4 512H378.6c38.3 0 69.4-31.1 69.4-69.4c0-12.8-3.6-25.4-10.3-36.4L329.5 230.4c-6.2-10.1-9.5-21.7-9.5-33.5V64c17.7 0 32-14.3 32-32s-14.3-32-32-32H288zM192 196.8V64h64V196.8c0 23.7 6.6 46.9 19 67.1L309.5 320h-171L173 263.9c12.4-20.2 19-43.4 19-67.1z"/></svg>
Fluroxypyr
</p>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 448 512" style="height:1em;width:0.88em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#ff5964;overflow:visible;position:relative;"><path d="M288 0H160 128C110.3 0 96 14.3 96 32s14.3 32 32 32V196.8c0 11.8-3.3 23.5-9.5 33.5L10.3 406.2C3.6 417.2 0 429.7 0 442.6C0 480.9 31.1 512 69.4 512H378.6c38.3 0 69.4-31.1 69.4-69.4c0-12.8-3.6-25.4-10.3-36.4L329.5 230.4c-6.2-10.1-9.5-21.7-9.5-33.5V64c17.7 0 32-14.3 32-32s-14.3-32-32-32H288zM192 196.8V64h64V196.8c0 23.7 6.6 46.9 19 67.1L309.5 320h-171L173 263.9c12.4-20.2 19-43.4 19-67.1z"/></svg>
Triclopyr
</p>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 448 512" style="height:1em;width:0.88em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#ff5964;overflow:visible;position:relative;"><path d="M288 0H160 128C110.3 0 96 14.3 96 32s14.3 32 32 32V196.8c0 11.8-3.3 23.5-9.5 33.5L10.3 406.2C3.6 417.2 0 429.7 0 442.6C0 480.9 31.1 512 69.4 512H378.6c38.3 0 69.4-31.1 69.4-69.4c0-12.8-3.6-25.4-10.3-36.4L329.5 230.4c-6.2-10.1-9.5-21.7-9.5-33.5V64c17.7 0 32-14.3 32-32s-14.3-32-32-32H288zM192 196.8V64h64V196.8c0 23.7 6.6 46.9 19 67.1L309.5 320h-171L173 263.9c12.4-20.2 19-43.4 19-67.1z"/></svg>
Isoxaflutole metabolite (DKN)
</p>
</h5>
<h3>3 Insecticides:</h3>
<h5>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#feab3a;overflow:visible;position:relative;"><path d="M256 0c53 0 96 43 96 96v3.6c0 15.7-12.7 28.4-28.4 28.4H188.4c-15.7 0-28.4-12.7-28.4-28.4V96c0-53 43-96 96-96zM41.4 105.4c12.5-12.5 32.8-12.5 45.3 0l64 64c.7 .7 1.3 1.4 1.9 2.1c14.2-7.3 30.4-11.4 47.5-11.4H312c17.1 0 33.2 4.1 47.5 11.4c.6-.7 1.2-1.4 1.9-2.1l64-64c12.5-12.5 32.8-12.5 45.3 0s12.5 32.8 0 45.3l-64 64c-.7 .7-1.4 1.3-2.1 1.9c6.2 12 10.1 25.3 11.1 39.5H480c17.7 0 32 14.3 32 32s-14.3 32-32 32H416c0 24.6-5.5 47.8-15.4 68.6c2.2 1.3 4.2 2.9 6 4.8l64 64c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0l-63.1-63.1c-24.5 21.8-55.8 36.2-90.3 39.6V240c0-8.8-7.2-16-16-16s-16 7.2-16 16V479.2c-34.5-3.4-65.8-17.8-90.3-39.6L86.6 502.6c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3l64-64c1.9-1.9 3.9-3.4 6-4.8C101.5 367.8 96 344.6 96 320H32c-17.7 0-32-14.3-32-32s14.3-32 32-32H96.3c1.1-14.1 5-27.5 11.1-39.5c-.7-.6-1.4-1.2-2.1-1.9l-64-64c-12.5-12.5-12.5-32.8 0-45.3z"/></svg>
Chlorpyrifos
</p>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#feab3a;overflow:visible;position:relative;"><path d="M256 0c53 0 96 43 96 96v3.6c0 15.7-12.7 28.4-28.4 28.4H188.4c-15.7 0-28.4-12.7-28.4-28.4V96c0-53 43-96 96-96zM41.4 105.4c12.5-12.5 32.8-12.5 45.3 0l64 64c.7 .7 1.3 1.4 1.9 2.1c14.2-7.3 30.4-11.4 47.5-11.4H312c17.1 0 33.2 4.1 47.5 11.4c.6-.7 1.2-1.4 1.9-2.1l64-64c12.5-12.5 32.8-12.5 45.3 0s12.5 32.8 0 45.3l-64 64c-.7 .7-1.4 1.3-2.1 1.9c6.2 12 10.1 25.3 11.1 39.5H480c17.7 0 32 14.3 32 32s-14.3 32-32 32H416c0 24.6-5.5 47.8-15.4 68.6c2.2 1.3 4.2 2.9 6 4.8l64 64c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0l-63.1-63.1c-24.5 21.8-55.8 36.2-90.3 39.6V240c0-8.8-7.2-16-16-16s-16 7.2-16 16V479.2c-34.5-3.4-65.8-17.8-90.3-39.6L86.6 502.6c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3l64-64c1.9-1.9 3.9-3.4 6-4.8C101.5 367.8 96 344.6 96 320H32c-17.7 0-32-14.3-32-32s14.3-32 32-32H96.3c1.1-14.1 5-27.5 11.1-39.5c-.7-.6-1.4-1.2-2.1-1.9l-64-64c-12.5-12.5-12.5-32.8 0-45.3z"/></svg>
Fipronil
</p>
<p>
<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:#feab3a;overflow:visible;position:relative;"><path d="M256 0c53 0 96 43 96 96v3.6c0 15.7-12.7 28.4-28.4 28.4H188.4c-15.7 0-28.4-12.7-28.4-28.4V96c0-53 43-96 96-96zM41.4 105.4c12.5-12.5 32.8-12.5 45.3 0l64 64c.7 .7 1.3 1.4 1.9 2.1c14.2-7.3 30.4-11.4 47.5-11.4H312c17.1 0 33.2 4.1 47.5 11.4c.6-.7 1.2-1.4 1.9-2.1l64-64c12.5-12.5 32.8-12.5 45.3 0s12.5 32.8 0 45.3l-64 64c-.7 .7-1.4 1.3-2.1 1.9c6.2 12 10.1 25.3 11.1 39.5H480c17.7 0 32 14.3 32 32s-14.3 32-32 32H416c0 24.6-5.5 47.8-15.4 68.6c2.2 1.3 4.2 2.9 6 4.8l64 64c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0l-63.1-63.1c-24.5 21.8-55.8 36.2-90.3 39.6V240c0-8.8-7.2-16-16-16s-16 7.2-16 16V479.2c-34.5-3.4-65.8-17.8-90.3-39.6L86.6 502.6c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3l64-64c1.9-1.9 3.9-3.4 6-4.8C101.5 367.8 96 344.6 96 320H32c-17.7 0-32-14.3-32-32s14.3-32 32-32H96.3c1.1-14.1 5-27.5 11.1-39.5c-.7-.6-1.4-1.2-2.1-1.9l-64-64c-12.5-12.5-12.5-32.8 0-45.3z"/></svg>
Imidacloprid
</p>
</h5>
</p>

## Pollutant Risk Metric (PRM)

The combined toxicity risk of these 22 pollutants and any additional
added by the user is estimated by the Pollution Risk Metric. The risk is
expressed as the percentage of species potentially affected (or
conversely, protected) by the combined toxicity of all pollutants with
provided SSD data over a standardized wet season (182 days, is the
default for Queensland but this duration can be edited in the package,
from the first flush event). The pollutant risk metric is based on the
method for calculating pesticide risk metric values as defined by
Queensland Department of Envrionment and science, which can be found
[here.](https://www.publications.qld.gov.au/dataset/method-development-pesticide-risk-metric-baseline-condition-of-waterways-to-gbr/resource/c65858f9-d7ba-4aef-aa4f-e148f950220f)
The key difference of the PRM is the ability to add more pollutants to
the metric. The estimates can be compared to the three categories of
ecosystem condition, as defined in the ![Australian and New Zealand
Guidelines for Fresh & Marine Water
Quality:](https://github.com/qg-qesd/WQI_CatchThemAll.PRM/blob/main/images/ANZG_table.PNG)

# How To Catch Them All (Calculate PRM)

The process for calculating PRM estimates using this method is split
into **4 main parts/functions:**

1.  Adding new pollutant SSD information to the metric
    (add_your_own_pollutant function)
2.  Treating Limit of Reporting (LOR) concentration values
    (treat_LORs_all_data function)
3.  Calculating daily average PRM estimates
    (calculate_daily_average_PRM)
4.  Calculating wet season average PRM estimates
    (calculate_wet_season_average_PRM)

An example of how to run this package is provided below using the
included “Kanto_pollutants” concentration data:

## Adding Your Own Pollutants

Pollutant Risk Metric values are estimated using independent action
addition of pollutant risk and as such any pollutants can be added to
the risk metric provided concentration measurements and SSD information
is provided. This package comes pre loaded with the “pollutant_info”
look up table which contains all the information for the 22 pollutants
needed for the functions to estimate PRM values, and to this table new
pollutants can be added. This can be done using the
add_your_own_pesticides function instead of creating your own look up
table seen in the example below

``` r
library(CatchThemAll.PRM)
library(DT)
```

    ## 
    ## Attaching package: 'DT'

    ## The following objects are masked from 'package:shiny':
    ## 
    ##     dataTableOutput, renderDataTable

``` r
pollutant_info <- CatchThemAll.PRM::pollutant_info #the original 22 pollutants


pollutant_info <- add_your_own_pollutant(pollutants = "Poison", #adding one new pollutant
                                         relative_LORs = 0.023, pollutant_types = "Poison",
                                         distribution_types = "Log-Normal", scales = 0.09,
                                         shape_locations = 0.014)

pollutant_info <- add_your_own_pollutant(pollutants = #adding multiple new pollutants
                                           c("Poison", "Acid", "Sludge"),
                                         relative_LORs = c(0.03, 0.01, 0.5), 
                                         pollutant_types = c("Ghost", "Bug", "Poison"),
                                         distribution_types = c("Log-Normal", "Log-Logistic
                                                                Log-Logistic", "Burr Type III"),
                                         scales = c(0.3, 0.002, 2),
                                         scale_2s = c(NA, 0.04, NA), 
                                         shape_locations = c(1, 0.07, 3),
                                         shape_location_2s = c(NA, 0.14, 2.3),
                                         weights = c(NA, 0.08, NA))
```

Due to the nature of independent action addition used to calculate this
metric pollutants that are not measured do not need to be removed but
their cells must remain empty and for clarity the user should make it
clear which pollutants have been measured and therefore make up the risk
estimate.

## Treating Limit of Reporting (LOR) concentration values

How to treat Limit of Reporting values is a common issue in lab
concentration measurements. This package provides two ways to treat LORs
using the “treat_LORs_all_data” function. The first is the method
outlined in the Pesticide Risk Metric methods document above, and the
second is the replacing all LOR values with zero. An example of how to
use this function can be seen below and requires a data frame of
concentration values with a column that matches each pollutant name in
the pollutant info look up table and a “Site Name” and “Date” column.

``` r
library(CatchThemAll.PRM)
head(Kanto_pollutants) #Kanto pollutant concentrations before LOR treatment
```

    ## # A tibble: 6 × 390
    ##   `Site Name`   Date    Ametryn Atrazine Chlorpyrifos Diuron Fipronil Fluroxypyr
    ##   <chr>         <chr>   <chr>   <chr>    <chr>        <chr>  <chr>    <chr>     
    ## 1 Cerulean City 3/07/2… 0.0051  4.9      <0.02        0.04   <0.02    0.032     
    ## 2 Cerulean City 10/07/… 0.017   0.82     <NA>         0.051  <NA>     0.16      
    ## 3 Cerulean City 18/07/… 0.033   18       <0.02        0.11   <0.02    0.64      
    ## 4 Cerulean City 24/07/… 0.0065  1.2      <0.05        0.039  <0.02    0.045     
    ## 5 Cerulean City 30/07/… 0.011   0.75     <0.02        0.029  <0.02    1.5       
    ## 6 Cerulean City 8/08/2… 0.012   0.45     <NA>         0.032  <NA>     0.009     
    ## # ℹ 382 more variables: `Haloxyfop (acid)` <chr>, Hexazinone <chr>,
    ## #   Imazapic <chr>, Imidacloprid <chr>, `Isoxaflutole metabolite (DKN)` <chr>,
    ## #   MCPA <chr>, Metolachlor <chr>, Metribuzin <chr>,
    ## #   `Metsulfuron methyl` <chr>, Pendimethalin <chr>, Prometryn <chr>,
    ## #   Simazine <chr>, Tebuthiuron <chr>, Terbuthylazine <chr>, Triclopyr <chr>,
    ## #   `2,4-D` <chr>, `Imidacloprid day 1` <chr>, `Imidacloprid day 2` <chr>,
    ## #   `Imidacloprid day 3` <chr>, `Imidacloprid day 4` <chr>, …

``` r
Kanto_pollutants_LOR_treated <- treat_LORs_all_data(raw_data = Kanto_pollutants,
pollutant_info = CatchThemAll.PRM::pollutant_info, treatment_method = "WQI")

head(Kanto_pollutants_LOR_treated) #Kanto pollutant concentrations after treatment
```

    ## # A tibble: 6 × 391
    ##   `Site Name`   `Sampling Year` Date       Chlorpyrifos  Fipronil  Pendimethalin
    ##   <chr>         <chr>           <chr>      <chr>         <chr>     <chr>        
    ## 1 Cerulean City 2017-2018       2017-07-03 0.00000000001 0.000000… 0.00000000001
    ## 2 Cerulean City 2017-2018       2017-07-10 <NA>          <NA>      <NA>         
    ## 3 Cerulean City 2017-2018       2017-07-18 1.892e-08     9.56e-08  2.36e-06     
    ## 4 Cerulean City 2017-2018       2017-07-24 4.73e-08      9.56e-08  2.36e-06     
    ## 5 Cerulean City 2017-2018       2017-07-30 1.892e-08     9.56e-08  2.36e-06     
    ## 6 Cerulean City 2017-2018       2017-08-08 <NA>          <NA>      <NA>         
    ## # ℹ 385 more variables: Metolachlor <chr>, MCPA <chr>, Triclopyr <chr>,
    ## #   Ametryn <chr>, Atrazine <chr>, Prometryn <chr>, Terbuthylazine <chr>,
    ## #   Simazine <chr>, Diuron <chr>, Imidacloprid <chr>,
    ## #   `Metsulfuron methyl` <chr>, `2,4-D` <chr>,
    ## #   `Isoxaflutole metabolite (DKN)` <chr>, Hexazinone <chr>, Metribuzin <chr>,
    ## #   `Haloxyfop (acid)` <chr>, Imazapic <chr>, Fluroxypyr <chr>,
    ## #   Tebuthiuron <chr>, `Imidacloprid day 1` <chr>, …

## Calculating daily average PRM estimates

Once LOR values have been treated daily average PRM values can be
calculated using the “calculate_daily_average_PRM” function. This
function is designed to run with a dataframe exported from the
“treat_LORs_all_data” function. However if you skipped the treat LORs
step the input data frame needs all the same columns and an additional
column for sampling year. An example is shown below

``` r
library(CatchThemAll.PRM)
Kanto_pollutants_LOR_treated <- treat_LORs_all_data(raw_data = Kanto_pollutants,
pollutant_info = CatchThemAll.PRM::pollutant_info, treatment_method = "WQI")
head(Kanto_pollutants_LOR_treated) #Kanto pollutant concentrations after treatment
```

    ## # A tibble: 6 × 391
    ##   `Site Name`   `Sampling Year` Date       Chlorpyrifos  Fipronil  Pendimethalin
    ##   <chr>         <chr>           <chr>      <chr>         <chr>     <chr>        
    ## 1 Cerulean City 2017-2018       2017-07-03 0.00000000001 0.000000… 0.00000000001
    ## 2 Cerulean City 2017-2018       2017-07-10 <NA>          <NA>      <NA>         
    ## 3 Cerulean City 2017-2018       2017-07-18 1.892e-08     9.56e-08  2.36e-06     
    ## 4 Cerulean City 2017-2018       2017-07-24 4.73e-08      9.56e-08  2.36e-06     
    ## 5 Cerulean City 2017-2018       2017-07-30 1.892e-08     9.56e-08  2.36e-06     
    ## 6 Cerulean City 2017-2018       2017-08-08 <NA>          <NA>      <NA>         
    ## # ℹ 385 more variables: Metolachlor <chr>, MCPA <chr>, Triclopyr <chr>,
    ## #   Ametryn <chr>, Atrazine <chr>, Prometryn <chr>, Terbuthylazine <chr>,
    ## #   Simazine <chr>, Diuron <chr>, Imidacloprid <chr>,
    ## #   `Metsulfuron methyl` <chr>, `2,4-D` <chr>,
    ## #   `Isoxaflutole metabolite (DKN)` <chr>, Hexazinone <chr>, Metribuzin <chr>,
    ## #   `Haloxyfop (acid)` <chr>, Imazapic <chr>, Fluroxypyr <chr>,
    ## #   Tebuthiuron <chr>, `Imidacloprid day 1` <chr>, …

``` r
#calculate daily PRM
Kanto_daily_PRM <- calculate_daily_average_PRM(LOR_treated_data = Kanto_pollutants_LOR_treated)
head(Kanto_daily_PRM)
```

    ## # A tibble: 6 × 8
    ##   `Site Name`   `Sampling Year` Date       `Total PRM` `Insecticide PRM`
    ##   <chr>         <chr>           <chr>            <dbl>             <dbl>
    ## 1 Cerulean City 2017-2018       2017-07-03         100               100
    ## 2 Cerulean City 2017-2018       2017-07-10         100               100
    ## 3 Cerulean City 2017-2018       2017-07-18         100               100
    ## 4 Cerulean City 2017-2018       2017-07-24         100               100
    ## 5 Cerulean City 2017-2018       2017-07-30         100               100
    ## 6 Cerulean City 2017-2018       2017-08-08         100               100
    ## # ℹ 3 more variables: `Other Herbicide PRM` <dbl>, `PSII Herbicide PRM` <dbl>,
    ## #   `Imidacloprid PRM` <dbl>

This package also has a function for quickly plotting daily average PRM
estimates plot_daily_PRM, for
![example:](https://github.com/AlexWaterboyBezzina/CatchThemAll.PRM/blob/main/images/plot_example.PNG)

## Calculating wet season average PRM estimates

The final part of this package is for those interested in estimating a
PRM value for a reoccurring large window of time like a wet season or a
period of high pollution risk. It involves using multiple imputation to
predict and average PRM value of the specified window for as many window
repetitions provided in the data. For example if looking at wet seasons,
if 4 sampling years worth of concentration data is provided there will
be a wet season estimate for each year. This is done using the
“calculate_wet_season_average_PRM” function as shown below.

``` r
library(CatchThemAll.PRM)
Kanto_pollutants_LOR_treated <- treat_LORs_all_data(raw_data = Kanto_pollutants,
pollutant_info = CatchThemAll.PRM::pollutant_info, treatment_method = "WQI")
Kanto_daily_PRM <- calculate_daily_average_PRM(LOR_treated_data = Kanto_pollutants_LOR_treated)


Kanto_wet_season_PSII_PRM <- calculate_wet_season_average_PRM(daily_PRM_data = Kanto_daily_PRM, PRM_group = "Total PRM") #this calculates the wet season average PRM for all pollutant groups
                         #to calculate for a specific group define it in "PRM_group ="
head(Kanto_wet_season_PSII_PRM)
```

    ## # A tibble: 6 × 3
    ##   `Site Name`   `Sampling Year` `Total PRM`
    ##   <chr>         <chr>                 <dbl>
    ## 1 Cerulean City 2017-2018             100. 
    ## 2 Lavendar Town 2017-2018             100. 
    ## 3 Mt Moon       2017-2018              99.7
    ## 4 Cerulean City 2018-2019             100. 
    ## 5 Lavendar Town 2018-2019             100. 
    ## 6 Mt Moon       2018-2019              98.8

## Disclaimer

**This package is still in development**. Information is from several
sources and, as such, does not necessarily represent government or
departmental policy. While every care is taken to ensure the accuracy of
this information, the Department of Environment and Science makes no
representations or warranties relating to accuracy, reliability,
completeness, currency or suitability for any particular purpose and
disclaims all responsibility and all liability (including without
limitation, liability in negligence) for all expenses, losses, damages
(including indirect or consequential damage) and costs that might be
incurred as a result of any use or of reliance on the information and
calculated data in any way and for any reason.

## Citation

**R Package:**

*Bezzina A, Neelamraju C, Strauss J, Kaminski H, Roberts C, Glen J, Dias
F. 2022. CatchThemAll.PRM: Pesticide Risk Metric Calculations. R
package. Water Quality Monitoring & Investigations, Department of
Environment and Science, Queensland Government.
<https://github.com/AlexWaterboyBezzina/CatchThemAll.PRM>*

**Methods Behind Pesticide Risk Metric:**

*Warne MStJ, Neelamraju C, Strauss J, Smith RA, Turner RDR, Mann RM.
2020. Development of a method for estimating the toxicity of pesticide
mixtures and a Pesticide Risk Baseline for the Reef 2050 Water Quality
Improvement Plan. Brisbane: Department of Environment and Science,
Queensland Government.*
