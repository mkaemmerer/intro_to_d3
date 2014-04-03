<svg width="860" height="340">
  <rect fill="white" width="860" height="340"></rect>
  <circle cx="200" cy="170" r="100" fill="steelblue"></circle>
  <circle cx="600" cy="170" r="100" fill="crimson"></circle>
</svg>


```
  var data = [
    {color: 'steelblue', r: 10, x: 20, y: 15},
    {color: 'crimson', r: 10, x: 60, y: 15}
  ];

  d3.select('svg')
    .selectAll('circle').data(data)
    .enter()
    .append('circle')
      .attr('fill', function(d){ return d.color; })
      .attr('r',    function(d){ return 10*d.r; })
      .attr('cx',   function(d){ return 10*d.x; })
      .attr('cy',   function(d){ return 10*d.y; });
```
