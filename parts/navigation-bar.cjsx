{ProgressBar, Input, Button, Panel} = ReactBootstrap
module.exports = React.createClass
  render: ->
    if @props.isFirst == 1 || (@props.isFirst == 0 && @props.lay == 0)
      if @props.isFirst == 1
        list = []
        tmp = 6 / (@props.cols + 1)
        for i in [0..(@props.cols)]
          if (i == @props.cols) && (@props.lay == 1)
            if !@props.enemyPlane
              list.push <span key={i*2} style={flex: tmp} className="ship-name flex-row">{@props.enemyName}<FontAwesome className="damage" key={1} name='crosshairs' /></span>
            else
              list.push <span key={i*2} style={flex: tmp} className="ship-name flex-row">{@props.enemyName}<span className="navigation-bar-airplane flex-row">「<FontAwesome name='plane' />{@props.enemyPlane}」</span><FontAwesome className="damage" key={1} name='crosshairs' /></span>
          else if i == 1 or !@props.sortiePlane
            list.push <span key={i*2} style={flex: tmp} className="ship-name flex-row">{@props.sortieFleet}<FontAwesome className="damage" key={1} name='crosshairs' /></span>
          else
            list.push <span key={i*2} style={flex: tmp} className="ship-name flex-row">{@props.sortieFleet}<span className="navigation-bar-airplane flex-row">「<FontAwesome name='plane' />{@props.sortiePlane}」</span><FontAwesome className="damage" key={1} name='crosshairs' /></span>
          list.push <span key={i*2+1} style={flex: tmp}>{@props.HP}</span>
        <Panel className="flex-row navigation-bar">
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
            <FontAwesome className="damage" key={1} name='crosshairs' />
          </span>
          <span className="navigation-bar-hp">{@props.HP}</span>
        </Panel>
      else
        <div></div>
    else
      <div></div>
