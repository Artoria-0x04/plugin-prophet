{Alert} = ReactBootstrap
module.exports = React.createClass
  render: ->
    <div>
      {
        if @props.getShip?
          <Alert className="flex-row">
            {"#{@props.getShip.api_ship_type} 「#{@props.getShip.api_ship_name}」 #{@props.joinFleet}"}
          </Alert>
        else if @props.formationNum != 0
          <Alert className="flex-row">
            {"#{@props.result} | #{@props.formation} | #{@props.intercept} | #{@props.seiku}"}
          </Alert>
        else if @props.nextSpotInfo
          <Alert className="flex-row">
            {"#{@props.compassPoint}: "}
            {
              if @props.compassAngle
                <FontAwesome name='arrow-up' fixedWidth={true}
                             style={transform: "rotate(#{@props.compassAngle}deg)"} />
              else
                "?"
            }
            {" | #{@props.nextSpot}: #{@props.nextSpotInfo}"}
          </Alert>
      }
    </div>
