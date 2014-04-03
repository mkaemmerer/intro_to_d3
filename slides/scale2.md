<svg class="inverse" width="860" height="340">
  <defs>
    <linearGradient id="gradient" x1="0" x2="1" y1="0" y2="0">
      <stop offset="0%" stop-color="white"/>
      <stop offset="100%" stop-color="blue"/>
    </linearGradient>
    <marker id="arrowhead"
        viewBox="0 0 6 6"
        refY="3"
        refX="7"
        fill="white"
        markerWidth="7"
        markerHeight="7"
        orient="auto">
      <path d="M0,3v-3l6,3l-6,3z"></path>
    </marker>
  </defs>
  <g class="x axis" transform="translate(250,100)">
    <g class="tick" transform="translate(0,0)" style="opacity: 1;"><line y2="6" x2="0"></line><text y="9" x="0" dy=".71em" style="text-anchor: middle;">0.0</text></g>
    <g class="tick" transform="translate(57,0)" style="opacity: 1;"><line y2="6" x2="0"></line><text y="9" x="0" dy=".71em" style="text-anchor: middle;">0.25</text></g>
    <g class="tick" transform="translate(115,0)" style="opacity: 1;"><line y2="6" x2="0"></line><text y="9" x="0" dy=".71em" style="text-anchor: middle;">0.5</text></g>
    <g class="tick" transform="translate(172,0)" style="opacity: 1;"><line y2="6" x2="0"></line><text y="9" x="0" dy=".71em" style="text-anchor: middle;">0.75</text></g>
    <g class="tick" transform="translate(230,0)" style="opacity: 1;"><line y2="6" x2="0"></line><text y="9" x="0" dy=".71em" style="text-anchor: middle;">1.0</text></g>
    <path class="domain" d="M0,6V0H230V6"></path>
  </g>
  <g class="x axis" transform="translate(20,250)">
    <rect width="690" height="20" fill="url(#gradient)" stroke="gray" stroke-width="2"></rect>
  </g>
  <line marker-end="url(#arrowhead)" x1="250" x2="20" y1="100" y2="250" stroke="white"></line>
  <line marker-end="url(#arrowhead)" x1="307" x2="192" y1="100" y2="250" stroke="white"></line>
  <line marker-end="url(#arrowhead)" x1="365" x2="365" y1="100" y2="250" stroke="white"></line>
  <line marker-end="url(#arrowhead)" x1="422" x2="537" y1="100" y2="250" stroke="white"></line>
  <line marker-end="url(#arrowhead)" x1="480" x2="710" y1="100" y2="250" stroke="white"></line>
</svg>


```
  var scale = d3.scale.linear()
    .domain([0,1])
    .range(["#ffffff", "#0000ff"]);

  scale(0);    // #ffffff (white)
  scale(0.25); // #bfbfff (pale blue)
  scale(0.5);  // #8080ff (light blue)
  scale(1.0);  // #0000ff (blue)
```
