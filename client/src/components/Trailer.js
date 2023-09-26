import React from 'react'
import Youtube from 'react-youtube'

const opts = {
    height: '300',
    width: '152%',
    playerVars: {
        // https://developers.google.com/youtube/player_parameters
        autoplay: 1,
        controls: 1,
    },
}

 function Trailer({trailer}) {
  return (

    <div className='trailer-page'>
        <div>
            <h3>Trailer:</h3>
            <Youtube videoId={trailer.slice(17)} opts={opts}/>
        </div>
    </div>
  )
}

export default Trailer