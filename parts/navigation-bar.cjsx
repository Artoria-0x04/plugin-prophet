{Table, ProgressBar, Grid, Input, Col, Alert, Button} = ReactBootstrap
module.exports = React.createClass
  render: ->
    if @props.isFirst == 1 || (@props.isFirst == 0 && @props.lay == 0)
      if @props.isFirst == 1
        list = []
        tmp = 6 / (@props.cols + 1)
        for i in [0..(@props.cols)]
          if (i == @props.cols) && (@props.lay == 1)
            if !@props.enemyPlane
              list.push <span style={flex: tmp}>{@props.enemyName}</span>
            else
              list.push <span style={flex: tmp} className="navigation-bar-airplane">{@props.enemyName}「<FontAwesome name='plane' />{@props.enemyPlane}」</span>
          else if i == 1 or !@props.sortiePlane
            list.push <span style={flex: tmp}>{@props.sortieFleet}</span>
          else
            list.push <span style={flex: tmp} className="navigation-bar-airplane">{@props.sortieFleet}「<FontAwesome name='plane' />{@props.sortiePlane}」</span>
          list.push <span style={flex: tmp}>{@props.HP}</span>
        <Alert className="flex-row">
          {list}
        </Alert>
      else if @props.enemyInfo.lv[0] != -1
        <Alert className="flex-row">
          <span className="navigation-bar-airplane">
            {@props.enemyName}
            {
              if @props.enemyPlane
                <span>「<FontAwesome name='plane' />{@props.enemyPlane}」</span>
            }
          </span>
          <span className="navigation-bar-hp">{@props.HP}</span>
        </Alert>
      else
        <div></div>
    else
      <div></div>
