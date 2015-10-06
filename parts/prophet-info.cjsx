{Table, ProgressBar, Grid, Input, Col, Alert, Button, OverlayTrigger, Popover} = ReactBootstrap

getCondStyle = (cond, show) ->
  if show
    window.getCondStyle cond

module.exports = React.createClass
  render: ->
    if @props.lv == -1
      <div className="prophet-info-content"></div>
    else
      nameTxt = "#{@props.name} "
      showCond = @props.condShow
      if showCond
        condTxt = "★#{@props.cond}"
        nameTxt += condTxt
      lvTxt = "Lv.#{@props.lv} "
      popoverTxt = nameTxt + lvTxt
      if !@props.compactMode
        lvTxt += nameTxt

      <div style={opacity: 1 - 0.6 * @props.isBack} className="prophet-info-content">
        <OverlayTrigger trigger='click' rootClose placement='bottom' overlay={<Popover>{popoverTxt}</Popover>} >
          <span className={getCondStyle(@props.cond, showCond) + " ship-name"}>
            {lvTxt}
          </span>
        </OverlayTrigger>
        {
          if @props.mvp == true
            <span className={getCondStyle(100, 1) + " attack-damage"}><FontAwesome name='sword'/> {@props.atk}</span>
          else
            <span className="attack-damage"><FontAwesome name='sword'/> {@props.atk}</span>
        }
      </div>
