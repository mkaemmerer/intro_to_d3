<svg width="860" height="340">
  <rect fill="white" width="860" height="340"></rect>
  <circle cx="200" cy="170" r="100" fill="steelblue"></circle>
</svg>

```
  var options = {color: 'steelblue', r: 10, x: 20, y: 15};

  d3.select('svg')
    .append('circle')
      .datum(options)
      .attr('fill', function(d){ return d.color; })
      .attr('r',    function(d){ return 10*d.r; })
      .attr('cx',   function(d){ return 10*d.x; })
      .attr('cy',   function(d){ return 10*d.y; });
```
