
# CatchThemAll.PRM

R package for calculating **Pesticide Risk Metric** values. This version
only includes the 22 pesticides currently used in the Queensland
Department of Environment and Science *Pesticide Risk Baseline for the
Reef 2050 Water Quality Improvement Plan*.

## Meet the 22 Pesticides

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

## Pesticide Risk Metric (PRM)

The combined toxicity risk of these 22 pesticides is estimated by the
Pesticide Risk Metric. The risk is expressed as the percentage of
species potentially affected (or conversely, protected) by the combined
toxicity of the 22 pesticides over a standardised wet season (182 days
from the first flush event). The current method for calculating PRM
values as defined by Queensland Department of Envrionment and science
can be found
[here](https://www.publications.qld.gov.au/dataset/method-development-pesticide-risk-metric-baseline-condition-of-waterways-to-gbr/resource/c65858f9-d7ba-4aef-aa4f-e148f950220f)
The estimates can be compared to the three categories of ecosystem
condition, as defined in the Australian and New Zealand Guidelines for
Fresh & Marine Water Quality:

    ## 
    ## Attaching package: 'DT'

    ## The following objects are masked from 'package:shiny':
    ## 
    ##     dataTableOutput, renderDataTable

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

<div class="datatables html-widget html-fill-item-overflow-hidden html-fill-item" id="htmlwidget-d3c1f6b8f0328d5b4295" style="width:100%;height:auto;"></div>
<script type="application/json" data-for="htmlwidget-d3c1f6b8f0328d5b4295">{"x":{"filter":"none","vertical":false,"data":[["≤1%","&gt;1 to 5%","&gt;5 to 10%","&gt;10 to 20%","&gt;20%"],["≥99%","95 to &lt;99%","90 to &lt;95%","80 to &lt;90%","&lt;80%"],["Very Low","Low","Moderate","High","Very High"],["High Ecological Value","Slightly to Moderately Disturbed","Highly Disturbed","Highly Disturbed","Highly Disturbed"]],"container":"<table class=\"FALSE\">\n  <thead>\n    <tr>\n      <th>PRM Value (Species Affected %)<\/th>\n      <th>PRM Value (Species Protected %<\/th>\n      <th>Risk Category<\/th>\n      <th>Ecological Condition (ANZG 2018)<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"info":false,"paging":false,"searching":false,"columnDefs":[],"order":[],"autoWidth":false,"orderClasses":false,"rowCallback":"function(row, data, displayNum, displayIndex, dataIndex) {\nvar value=data[2]; $(this.api().cell(row, 2).node()).css({'font-weight':'bold','background-color':'#e0e0e0','background':value == \"Very Low\" ? \"forestgreen\" : value == \"Low\" ? \"yellowgreen\" : value == \"Moderate\" ? \"yellow\" : value == \"High\" ? \"orange\" : value == \"Very High\" ? \"red\" : null});\n}"},"selection":{"mode":"multiple","selected":null,"target":"row","selectable":null}},"evals":["options.rowCallback"],"jsHooks":[]}</script>

# How To Catch Them All (Calculate PRM)

The process for calculating PRM estimates using this method is split
into **3 main parts/functions:**

1.  Treating Limit of Reporting (LOR) concentration values
    (treat_LORs_all_data function)
2.  Calculating daily average PRM estimates
    (calculate_daily_average_PRM)
3.  Calculating wet season average PRM estimates
    (calculate_wet_season_average_PRM)

An example of how to run this package is provided below:

``` r
library(CatchThemAll.PRM)
Pesticide_Info <- CatchThemAll.PRM::Pesticide_Info

kanto_pesticides <- CatchThemAll.PRM::Kanto_pesticides
head(kanto_pesticides)
```

    ## # A tibble: 6 × 24
    ##   `Site Name`   Date    Ametryn Atrazine Chlorpyrifos Diuron Fipronil Fluroxypyr
    ##   <chr>         <chr>   <chr>   <chr>    <chr>        <chr>  <chr>    <chr>     
    ## 1 Cerulean City 3/07/2… 0.0051  4.9      <0.02        0.04   <0.02    0.032     
    ## 2 Cerulean City 10/07/… 0.017   0.82     <NA>         0.051  <NA>     0.16      
    ## 3 Cerulean City 18/07/… 0.033   18       <0.02        0.11   <0.02    0.64      
    ## 4 Cerulean City 24/07/… 0.0065  1.2      <0.05        0.039  <0.02    0.045     
    ## 5 Cerulean City 30/07/… 0.011   0.75     <0.02        0.029  <0.02    1.5       
    ## 6 Cerulean City 8/08/2… 0.012   0.45     <NA>         0.032  <NA>     0.009     
    ## # ℹ 16 more variables: `Haloxyfop (acid)` <chr>, Hexazinone <chr>,
    ## #   Imazapic <chr>, Imidacloprid <chr>, `Isoxaflutole metabolite (DKN)` <chr>,
    ## #   MCPA <chr>, Metolachlor <chr>, Metribuzin <chr>,
    ## #   `Metsulfuron methyl` <chr>, Pendimethalin <chr>, Prometryn <chr>,
    ## #   Simazine <chr>, Tebuthiuron <chr>, Terbuthylazine <chr>, Triclopyr <chr>,
    ## #   `2,4-D` <chr>

``` r
Kanto_pesticides_LOR_treated <- treat_LORs_all_data(raw_data = Kanto_pesticides, pesticide_info = Pesticide_Info)
head(Kanto_pesticides_LOR_treated)
```

    ## # A tibble: 6 × 25
    ##   `Site Name`   `Sampling Year` Date       Chlorpyrifos  Fipronil   Imidacloprid
    ##   <chr>         <chr>           <chr>      <chr>         <chr>      <chr>       
    ## 1 Cerulean City 2017-2018       2017-07-03 0.00000000001 0.0000000… 0.005       
    ## 2 Cerulean City 2017-2018       2017-07-10 <NA>          <NA>       0.005       
    ## 3 Cerulean City 2017-2018       2017-07-18 1.8918e-08    9.552e-08  0.014       
    ## 4 Cerulean City 2017-2018       2017-07-24 4.7295e-08    9.552e-08  0.002       
    ## 5 Cerulean City 2017-2018       2017-07-30 1.8918e-08    9.552e-08  0.005       
    ## 6 Cerulean City 2017-2018       2017-08-08 <NA>          <NA>       0.002       
    ## # ℹ 19 more variables: `Haloxyfop (acid)` <chr>, Imazapic <chr>,
    ## #   `Metsulfuron methyl` <chr>, Pendimethalin <chr>, Metolachlor <chr>,
    ## #   `2,4-D` <chr>, MCPA <chr>, Fluroxypyr <chr>, Triclopyr <chr>,
    ## #   `Isoxaflutole metabolite (DKN)` <chr>, Ametryn <chr>, Atrazine <chr>,
    ## #   Prometryn <chr>, Terbuthylazine <chr>, Tebuthiuron <chr>, Simazine <chr>,
    ## #   Diuron <chr>, Hexazinone <chr>, Metribuzin <chr>

``` r
Kanto_daily_PRM <- calculate_daily_average_PRM(LOR_treated_data = Kanto_pesticides_LOR_treated)
head(Kanto_daily_PRM)
```

    ## # A tibble: 6 × 7
    ##   `Site Name`   `Sampling Year` Date       `Total PRM` `Insecticide PRM`
    ##   <chr>         <chr>           <chr>            <dbl>             <dbl>
    ## 1 Cerulean City 2017-2018       2017-07-03       22.9      0.000126     
    ## 2 Cerulean City 2017-2018       2017-07-10        7.34     0.0000172    
    ## 3 Cerulean City 2017-2018       2017-07-18       47.0      0.0145       
    ## 4 Cerulean City 2017-2018       2017-07-24       14.6      0.00851      
    ## 5 Cerulean City 2017-2018       2017-07-30       17.2      0.00533      
    ## 6 Cerulean City 2017-2018       2017-08-08        5.28     0.00000000193
    ## # ℹ 2 more variables: `Other Herbicide PRM` <dbl>, `PSII Herbicide PRM` <dbl>

``` r
Kanto_wet_season_PSII_PRM <- calculate_wet_season_average_PRM(daily_PRM_data = Kanto_daily_PRM, PRM_group = "Total PRM")
head(Kanto_wet_season_PSII_PRM)
```

    ## # A tibble: 6 × 3
    ##   `Site Name`   `Sampling Year` `Total PRM`
    ##   <chr>         <chr>                 <dbl>
    ## 1 Cerulean City 2017-2018             21.1 
    ## 2 Lavendar Town 2017-2018             37.5 
    ## 3 Mt Moon       2017-2018              5.99
    ## 4 Cerulean City 2018-2019             16.9 
    ## 5 Lavendar Town 2018-2019             31.2 
    ## 6 Mt Moon       2018-2019              3.94

## Daily Average Plots

This package also has a function for quickly plotting daily average PRM
estimates plot_daily_PRM, for example:

<div id="htmlwidget-6ee82bd06daf832b608e" style="width:672px;height:33%;" class="plotly html-widget "></div>
<script type="application/json" data-for="htmlwidget-6ee82bd06daf832b608e">{"x":{"visdat":{"7a407d8a23f8":["function () ","plotlyVisDat"]},"cur_data":"7a407d8a23f8","attrs":{"7a407d8a23f8":{"mode":"markers","x":{},"y":{},"yaxis":"y1","marker":{"size":9,"line":{"color":"black","width":1}},"color":{},"colors":["red","orange","yellow","light green","dark green"],"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"type":"scatter"}},"layout":{"height":"33%","margin":{"b":15,"l":25,"t":85,"r":25,"pad":4},"annotations":[{"text":"Wet Season Window","x":null,"y":1.01,"yref":"paper","textposition":"top","showarrow":false,"font":{"size":14,"color":"#4bacc6"}},{"text":"Wet Season Window","x":null,"y":1.01,"yref":"paper","textposition":"top","showarrow":false,"font":{"size":14,"color":"#4bacc6"}}],"yaxis":{"domain":[0,1],"automargin":true,"side":"left","title":"Species Affected (%)","showgrid":false,"range":[0,81.159999999999997],"showline":true,"ticks":"outside","tickfont":{"size":15},"titlefont":{"size":20}},"xaxis":{"domain":[0,1],"automargin":true,"anchor":"y1","showgrid":false,"range":[1498867200000,1530403200000],"type":"date","ticks":"outside","title":false,"tickfont":{"size":15},"titlefont":{"size":20},"categoryorder":"array","categoryarray":["2017-07-26","2017-08-25","2017-10-03","2017-10-19","2017-10-20","2017-10-24","2017-10-26","2017-10-31","2017-11-01","2017-11-03","2017-11-28","2017-12-02","2017-12-04","2017-12-06","2017-12-08","2017-12-12","2017-12-13","2017-12-14","2017-12-15","2017-12-21","2017-12-28","2018-01-03","2018-01-11","2018-01-18","2018-01-25","2018-02-01","2018-02-04","2018-02-05","2018-02-07","2018-02-09","2018-02-14","2018-02-22","2018-02-23","2018-02-24","2018-02-25","2018-02-26","2018-02-28","2018-03-01","2018-03-02","2018-03-03","2018-03-04","2018-03-07","2018-03-09","2018-03-16","2018-03-22","2018-03-25","2018-03-26","2018-03-28","2018-04-02","2018-04-03","2018-04-04","2018-04-05","2018-04-11","2018-04-14","2018-04-15","2018-04-16","2018-04-18","2018-04-26","2018-05-02","2018-05-22","2018-05-28"]},"legend":{"x":0,"y":1.1299999999999999,"orientation":"h","title":{"text":"<b> Species Affected (%) <\/b>"},"font":{"size":12}},"plot_bgcolor":"#EBEFF2","shapes":[{"type":"rect","layer":"below","fillcolor":"skyblue","line":{"color":"blue","dash":"dash"},"opacity":0.20000000000000001,"y0":0,"y1":1,"yref":"paper","x0":"2017-10-02 00:00:00.000000","x1":"2018-04-01 10:00:00.000000"}],"hovermode":"closest","showlegend":true},"source":"A","config":{"modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false,"toImageButtonOptions":{"format":"png","filename":"myplot","width":1501,"height":610},"displaylogo":false,"modeBarButtonsToRemove":["zoomIn2d","zoomOut2d","hoverCompareCartesian","lasso2d"]},"data":[{"mode":"markers","x":["2017-07-26"],"y":[0.66000000000000003],"yaxis":"y","marker":{"color":"rgba(0,100,0,1)","size":9,"line":{"color":"black","width":1}},"type":"scatter","name":"<1","textfont":{"color":"rgba(0,100,0,1)"},"error_y":{"color":"rgba(0,100,0,1)"},"error_x":{"color":"rgba(0,100,0,1)"},"line":{"color":"rgba(0,100,0,1)"},"xaxis":"x","frame":null},{"mode":"markers","x":["2017-08-25","2017-10-03","2018-05-22","2018-05-28"],"y":[2.3500000000000001,1.2,1.8200000000000001,2.5299999999999998],"yaxis":"y","marker":{"color":"rgba(144,238,144,1)","size":9,"line":{"color":"black","width":1}},"type":"scatter","name":">1 to 5","textfont":{"color":"rgba(144,238,144,1)"},"error_y":{"color":"rgba(144,238,144,1)"},"error_x":{"color":"rgba(144,238,144,1)"},"line":{"color":"rgba(144,238,144,1)"},"xaxis":"x","frame":null},{"mode":"markers","x":["2018-05-02"],"y":[9.7899999999999991],"yaxis":"y","marker":{"color":"rgba(255,255,0,1)","size":9,"line":{"color":"black","width":1}},"type":"scatter","name":">5 to 10","textfont":{"color":"rgba(255,255,0,1)"},"error_y":{"color":"rgba(255,255,0,1)"},"error_x":{"color":"rgba(255,255,0,1)"},"line":{"color":"rgba(255,255,0,1)"},"xaxis":"x","frame":null},{"mode":"markers","x":["2018-01-11","2018-01-25","2018-03-22","2018-04-14","2018-04-26"],"y":[19.66,12.99,17.719999999999999,18.829999999999998,15.539999999999999],"yaxis":"y","marker":{"color":"rgba(255,165,0,1)","size":9,"line":{"color":"black","width":1}},"type":"scatter","name":">10 to 20","textfont":{"color":"rgba(255,165,0,1)"},"error_y":{"color":"rgba(255,165,0,1)"},"error_x":{"color":"rgba(255,165,0,1)"},"line":{"color":"rgba(255,165,0,1)"},"xaxis":"x","frame":null},{"mode":"markers","x":["2017-10-19","2017-10-20","2017-10-24","2017-10-26","2017-10-31","2017-11-01","2017-11-03","2017-11-28","2017-12-02","2017-12-04","2017-12-06","2017-12-08","2017-12-12","2017-12-13","2017-12-14","2017-12-15","2017-12-21","2017-12-28","2018-01-03","2018-01-18","2018-02-01","2018-02-04","2018-02-05","2018-02-07","2018-02-09","2018-02-14","2018-02-22","2018-02-23","2018-02-24","2018-02-25","2018-02-26","2018-02-28","2018-03-01","2018-03-02","2018-03-03","2018-03-04","2018-03-07","2018-03-09","2018-03-16","2018-03-25","2018-03-26","2018-03-28","2018-04-02","2018-04-03","2018-04-04","2018-04-05","2018-04-11","2018-04-15","2018-04-16","2018-04-18"],"y":[25.539999999999999,61.640000000000001,55.399999999999999,53.810000000000002,41.850000000000001,80.159999999999997,59.170000000000002,41.68,40.979999999999997,74.260000000000005,72.290000000000006,70.510000000000005,61.789999999999999,56.689999999999998,42.640000000000001,52.619999999999997,42.329999999999998,32.009999999999998,24.77,20.469999999999999,26.600000000000001,37.340000000000003,50.369999999999997,59.590000000000003,53.020000000000003,48.18,51.100000000000001,53.759999999999998,45.609999999999999,56.25,53.979999999999997,46.359999999999999,40.649999999999999,42.060000000000002,40.43,44.240000000000002,40.229999999999997,33.049999999999997,26.09,25.760000000000002,35.619999999999997,29.390000000000001,22.66,26.140000000000001,30.07,30.780000000000001,21.649999999999999,25.620000000000001,32.140000000000001,28.710000000000001],"yaxis":"y","marker":{"color":"rgba(255,0,0,1)","size":9,"line":{"color":"black","width":1}},"type":"scatter","name":">20","textfont":{"color":"rgba(255,0,0,1)"},"error_y":{"color":"rgba(255,0,0,1)"},"error_x":{"color":"rgba(255,0,0,1)"},"line":{"color":"rgba(255,0,0,1)"},"xaxis":"x","frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.20000000000000001,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>

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
