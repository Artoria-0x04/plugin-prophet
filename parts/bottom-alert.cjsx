{Panel} = ReactBootstrap
module.exports = React.createClass
  render: ->
    <div>
      {
        if @props.getShip?
          <Panel>
            {"#{@props.getShip.api_ship_type} 「#{@props.getShip.api_ship_name}」 #{@props.joinFleet}"}
          </Panel>
        else if @props.formationNum != 0
          <Panel>
            {"#{@props.result} | #{@props.formation} | #{@props.intercept} | #{@props.seiku}"}
          </Panel>
        else if @props.nextSpotInfo
          <Panel>
            {"#{@props.compassPoint}: "}
            {
              if @props.compassAngle
                # FontAwesome `location-arrow` points to north by east 45 degrees.
                <FontAwesome name='location-arrow' fixedWidth={true}
                             style={transform: "rotate(#{@props.compassAngle - 45}deg)", width: "2rem", height: "14px"} />
              else
                "?"
            }
            {" | #{@props.nextSpot}: #{@props.nextSpotInfo}"}
          </Panel>
      }
    </div>
