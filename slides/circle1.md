<svg width="860" height="340">
  <rect fill="white" width="860" height="340"></rect>
  <circle cx="200" cy="170" r="100" fill="steelblue"></circle>
</svg>

```
  d3.select('svg')
    .append('circle')
      .attr('fill', 'steelblue')
      .attr('r', 100)
      .attr('cx', 200)
      .attr('cy', 150);
```
