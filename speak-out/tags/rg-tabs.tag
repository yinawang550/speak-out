<rg-tabs>

  <p>test</p>
<script>
var tags = riot.mount('rg-tabs', {
  tabs: {
  type: 'primary|secondary|success|error',
  tabs: [{
    heading: 'Tab one',
    text: 'This is tab one'
  }, {
    heading: 'Tab two',
    text: 'This is tab two',
    active: true
  }, {
    heading: 'Disabled tab',
    text: 'This is disabled tab',
    disabled: true
  }, {
    heading: 'Tab three',
    include: 'tab.html'
  }]
  }
})
tags[0].on('open', function (tab) { console.log('open', tab) })
       .on('loading', function (tab) { console.log('loading', tab) })
       .on('loaded', function (tab) { console.log('loaded', tab) })

</script>

</rg-tabs>
