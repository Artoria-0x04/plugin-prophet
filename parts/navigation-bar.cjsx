{Table, ProgressBar, Grid, Input, Col, Button, Panel} = ReactBootstrap
module.exports = React.createClass
  render: ->
    if @props.isFirst == 1 || (@props.isFirst == 0 && @props.lay == 0)
      if @props.isFirst == 1
        list = []
        tmp = 6 / (@props.cols + 1)
        for i in [0..(@props.cols)]
          if (i == @props.cols) && (@props.lay == 1)
            if !@props.enemyPlane
              list.push <span style={flex: tmp} className="ship-name flex-row">{@props.enemyName}</span>
            else
              list.push <span style={flex: tmp} className="navigation-bar-airplane flex-row">{@props.enemyName}「<FontAwesome name='plane' />{@props.enemyPlane}」</span>
          else if i == 1 or !@props.sortiePlane
            list.push <span style={flex: tmp} className="ship-name flex-row">{@props.sortieFleet}</span>
          else
            list.push <span style={flex: tmp} className="navigation-bar-airplane flex-row">{@props.sortieFleet}「<FontAwesome name='plane' />{@props.sortiePlane}」</span>
          list.push <span style={flex: tmp}>{@props.HP}</span>
        <Panel>
          {list}
        </Panel>
      else if @props.enemyInfo.lv[0] != -1
        <Panel>
          <span className="ship-name flex-row">
            {@props.enemyName}
          {
            if @props.enemyPlane
              <span className="navigation-bar-airplane flex-row">「<FontAwesome name='plane' />{@props.enemyPlane}」</span>
          }
          </span>
          <span className="navigation-bar-hp">{@props.HP}</span>
        </Panel>
      else
        <div></div>
    else
      <div></div>
