import { select, zoom } from "d3"

const data = {
  nodes: [
    {id: 1, x: 100, y: 50},
    {id: 2, x: 50, y: 100},
    {id: 3, x: 150, y: 100},
  ],
  links: [
    {source: 1, target: 2},
    {source: 1, target: 3},
  ]
};

const svg = select('svg');
const g = svg.append('g');

const handleZoom = (e) => g.attr('transform', e.transform);

const zooming = zoom().on('zoom', handleZoom); 

select('svg').call(zooming);

const links = data.links.map(l => {
  const source = data.nodes.find(n => n.id === l.source);
  const target = data.nodes.find(n => n.id === l.target);
  return {source, target};
});