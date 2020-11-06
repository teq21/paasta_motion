<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>pagination example</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
$b: #32cbfb;
$w: #fff;
$g: #e4e2e5;
$r: #fc3359;
$y: #fefb3a;
$bl: #222;
$t: rgba(255, 255, 255, 0.00001);

body {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  overflow: hidden;
  background: $g;
  #wrap {
    width: 800px;
    height: 500px;
    box-shadow: 0 20px 30px -5px rgba(0, 0, 0, 0.15);
    overflow: hidden;
    position: relative;
    transform-style: preserve-3d;
    background: linear-gradient(to bottom, $w 50%, $g 50%);
    .trigger {
      position: absolute;
      width: 5%;
      height: 100%;
      bottom: 0;
      right: 0;
      z-index: 99;
      opacity: 1;
      cursor: pointer;
      &:before {
        content: "";
        position: absolute;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        background: $w;
        box-shadow: -1px 0 0 0 rgba(0, 0, 0, 0.015);
        transition: 0.2s ease-in-out;
      }
      &:after {
        content: "";
        position: absolute;
        width: 0;
        height: 0;
        border-style: solid;
        border-width: 20px 0 20px 20px;
        border-color: transparent transparent transparent $bl;
        top: calc(50% - 20px);
        right: 8.5px;
        transition: 0.2s ease-in-out;
        opacity: 0;
      }
      @for $j from 1 through 8 {
        &:first-of-type {
          &:checked {
            & ~ .innerwrap {
              .cards {
                .cardwrap {
                  &:first-of-type {
                    opacity: 0;
                  }
                }
              }
            }
          }
        }
        &:nth-of-type(8) {
          &:checked {
            & ~ .innerwrap {
              .cards {
                .cardwrap {
                  &:last-of-type {
                    opacity: 0;
                  }
                }
              }
            }
          }
        }
        &:nth-of-type(#{$j}) {
          &:after {
            opacity: 1;
          }
          &:hover {
            &:after {
              border-color: transparent transparent transparent $w;
            }
            &:before {
              background: $bl;
            }
          }
          &:checked {
            pointer-events: none;
            transform: translateX(#{$j * 100%});
            & ~ .trigger {
              transform: translateX(#{$j * 0%});
              z-index: #{99 - $j};
            }
            & ~ .innerwrap {
              .cards {
                transform: rotate(#{($j - 1) * 45}deg);
              }
              input {
                @for $i from 1 through 8 {
                  &:nth-of-type(#{$i}) {
                    transform: rotate(#{((($i - 2) + $j) * 45) + 45}deg);
                  }
                }
              }
              .cardwrap {
                @for $i from 1 through 8 {
                  &:last-of-type {
                    opacity: 1;
                  }
                  &:nth-of-type(#{$i}) {
                    .card {
                      transform: rotate(#{(($i - 1) + $j) * -45}deg);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    .innerwrap {
      position: absolute;
      width: 1300px;
      height: 1300px;
      left: -725px;
      top: -400px;
      z-index: 999;
      input {
        position: absolute;
        top: calc(50% - 175px);
        height: 350px;
        width: 280px;
        left: 900px;
        transform-style: preserve-3d;
        transform-origin: -350px;
        perspective: 600px;
        z-index: 7;
        opacity: 0;
        cursor: pointer;
        &:before {
          content: "";
          position: absolute;
          width: 100%;
          height: 100%;
          left: 0%;
          top: 0%;
          z-index: 9;
          pointer-events: none;
        }
        @for $i from 1 through 8 {
          &:nth-of-type(#{$i}) {
            &:checked {
              &:before {
                width: 500%;
                left: -125%;
                height: 500%;
                top: -125%;
                pointer-events: auto;
              }
              &:hover {
                & ~ .cards {
                  .cardwrap {
                    &:nth-of-type(#{$i}) {
                      .inner {
                        .text {
                          &:before {
                            animation: turn
                              0.25s
                              ease-in-out
                              infinite
                              alternate;
                            @keyframes turn {
                              from {
                                transform: rotate(-5deg);
                              }
                              to {
                                transform: rotate(5deg);
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
              & ~ .cards {
                .cardwrap {
                  z-index: -1;
                  .card {
                    .inner {
                      transform: rotateX(0deg)
                        translateZ(-100px)
                        scale(0.95)
                        translateY(-30px)
                        translateX(-50px);
                      .text,
                      .link {
                        p {
                          transform: translateY(0px) skewY(0deg);
                          transition-delay: 0.8s;
                        }
                      }
                      .link {
                        p {
                          transition-delay: 1s;
                        }
                      }
                    }
                  }
                  &:nth-of-type(#{$i}) {
                    z-index: 2;
                    .card {
                      .inner {
                        transform: rotateX(0deg)
                          translateZ(150px)
                          translateY(-20px)
                          translateX(-70px);
                        box-shadow: 0 20px 20px 0 rgba(0, 0, 0, 0.25);
                        .text,
                        .link {
                          transition: opacity 0s ease-in-out,
                            transform
                              0.3s
                              cubic-bezier(0.175, 0.885, 0.32, 1.275),
                            box-shadow 0.2s ease-in-out;
                          transition-delay: 0.3s, 0.6s, 0s;
                          transform: translateX(150%) rotateX(0deg);
                          box-shadow: inherit;
                          opacity: 1;
                        }
                        .link {
                          transition-delay: 0.3s, 0.75s, 0s;
                          p {
                            &:before {
                              transition-delay: 0.95s;
                            }
                          }
                        }
                        &:after {
                          transform: skewX(0deg) translateZ(-1px) scale(1);
                        }
                        &:before {
                          transform: translateZ(20px);
                        }
                      }
                    }
                  }
                }
              }
            }
            transform: rotate(#{($i - 1) * 45}deg);
            transition: 0.7s cubic-bezier(1, 0, 0, 1);
          }
        }
      }
      .cards {
        position: absolute;
        width: 100%;
        height: 100%;
        left: -100px;
        top: 0;
        transition: 0.7s cubic-bezier(1, 0, 0, 1);
      }

      .cardwrap {
        position: absolute;
        top: calc(50% - 150px);
        height: 300px;
        width: 250px;
        left: 1000px;
        transform-style: preserve-3d;
        transform-origin: -350px;
        perspective: 800px;
        transition: 0.7s cubic-bezier(1, 0, 0, 1);
        @for $i from 1 through 8 {
          &:last-of-type {
            opacity: 0;
          }
          &:nth-of-type(1n) {
            .card {
              .inner {
                background: $b;
              }
            }
          }
          &:nth-of-type(2n) {
            .card {
              .inner {
                background: $r;
              }
            }
          }
          &:nth-of-type(3n) {
            .card {
              .inner {
                background: $y;
              }
            }
          }
          &:nth-of-type(#{$i}) {
            transform: rotate(#{($i) * 45}deg);

            .card {
              transform: rotate(#{($i) * -45}deg);
              transition: 0.7s cubic-bezier(1, 0, 0, 1);
              .inner {
                position: absolute;
                width: 112.5%;
                height: 112.5%;
                left: -0.675%;
                top: -0.675%;
                background: $r;
                transform-style: preserve-3d;
                transform-origin: bottom;
                transform: rotateX(-30deg) translateZ(-100px);
                transition: 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
                pointer-events: none;
                display: flex;
                padding: 25px 25px 40px 25px;
                box-sizing: border-box;
                align-items: flex-end;
                flex-wrap: wrap;
                h1 {
                  font-family: "Anton";
                  text-transform: uppercase;
                  letter-spacing: 1px;
                  font-size: 40px;
                  transform: translateZ(25px);
                  position: relative;
                  color: $bl;
                  span {
                    position: absolute;
                    font-size: 12px;
                    top: -30px;
                    left: 0;
                    padding: 5px;
                    background: $bl;
                    color: $w;
                  }
                }
                &:before {
                  content: "0#{$i}";
                  left: 25px;
                  top: 25px;
                  font-size: 75px;
                  color: #bl;
                  font-family: "Anton";
                  position: absolute;
                  transform: translateZ(1px);
                }
                &:after {
                  content: "";
                  position: absolute;
                  width: 100%;
                  height: 75%;
                  bottom: 0;
                  left: 0;
                  background: linear-gradient(
                    to bottom,
                    rgba(0, 0, 0, 0.00001),
                    rgba(0, 0, 0, 0.1)
                  );
                  transform-origin: bottom;
                  transform-style: preserve-3d;
                  z-index: -1;
                  transform: skewX(-10deg) translateZ(-1px) scale(1);
                  transition: 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
                }
                .text {
                  &:before {
                    content: "";
                    position: absolute;
                    width: 30px;
                    height: 30px;
                    border-radius: 100%;
                    background: linear-gradient(
                        45deg,
                        $t calc(50% - 2px),
                        $w calc(50% - 2px),
                        $w calc(50% + 2px),
                        $t calc(50% + 2px)
                      ),
                      linear-gradient(
                        -45deg,
                        $t calc(50% - 2px),
                        $w calc(50% - 2px),
                        $w calc(50% + 2px),
                        $t calc(50% + 2px)
                      ),
                      $r;
                    z-index: 999;
                    top: 10px;
                    right: 10px;
                    box-shadow: inset 0 0 0 5px $r;
                    transition: 0.2s ease-in-out;
                  }
                }
                .text,
                .link {
                  box-sizing: border-box;
                  position: absolute;
                  width: 70%;
                  height: 60%;
                  left: 0;
                  top: 0;
                  background: $bl;
                  transition: 0.2s cubic-bezier(0.175, 0.885, 0.32, 1);
                  transform: translateX(150%) rotateX(90deg);
                  opacity: 0;
                  transform-origin: bottom;
                  color: $w;
                  padding: 25px;
                  display: flex;
                  align-items: center;
                  text-transform: uppercase;
                  overflow: hidden;
                  p {
                    font-size: 12px;
                    margin-top: 0;
                    line-height: 1.5;
                    position: relative;
                    font-family: "Raleway";
                    transition: 0.4s cubic-bezier(0.175, 0.885, 0.32, 1);
                    transform: translateY(200px) skewY(20deg);
                  }
                }
                .link {
                  transform-origin: top;
                  height: calc(40% - 15px);
                  top: calc(60% + 15px);
                  background: $w;
                  color: $bl;
                  transform: translateX(150%) rotateX(-90deg);
                  p {
                    transform: translateY(200px) skewY(-20deg);
                  }
                }
              }
            }
          }
        }
        .card {
          position: absolute;
          left: 0;
          top: 0;
          width: 100%;
          height: 100%;
          transform-style: preserve-3d;
        }
      }
    }
  }
}



</style>

 

 





 
 




</head>
<body>

<div id='wrap'>
  <input class='trigger' name='rad' type='radio'>
  <input class='trigger' name='rad' type='radio'>
  <input class='trigger' name='rad' type='radio'>
  <input class='trigger' name='rad' type='radio'>
  <input class='trigger' name='rad' type='radio'>
  <input class='trigger' name='rad' type='radio'>
  <input class='trigger' name='rad' type='radio'>
  <input checked='checked' class='trigger' name='rad' type='radio'>
  <div class='innerwrap'>
    <input type='checkbox'>
    <input type='checkbox'>
    <input type='checkbox'>
    <input type='checkbox'>
    <input type='checkbox'>
    <input type='checkbox'>
    <input type='checkbox'>
    <input type='checkbox'>
    <div class='cards'>
      <div class='cardwrap'>
        <div class='card'>
          <div class='inner'>
            <h1><span>Hey Now</span>Somebody</h1>
            <div class='text'>
              <p>Well the years start coming and they don't stop coming</p>
            </div>
            <div class='link'>
              <p>Fed to the rules and I hit the ground running</p>
            </div>
          </div>
        </div>
      </div>
      <div class='cardwrap'>
        <div class='card'>
          <div class='inner'>
            <h1><span>You're an All-Star</span>once told</h1>
            <div class='text'>
              <p>Didn't make sense not to live for fun</p>
            </div>
            <div class='link'>
              <p>Your brain gits smart but your head gits dumb</p>
            </div>
          </div>
        </div>
      </div>
      <div class='cardwrap'>
        <div class='card'>
          <div class='inner'>
            <h1><span>Get your game on</span>me the world</h1>
            <div class='text'>
              <p>So much to do, so much to see</p>
            </div>
            <div class='link'>
              <p>So what's wrong with taking the back streets?</p>
            </div>
          </div>
        </div>
      </div>
      <div class='cardwrap'>
        <div class='card'>
          <div class='inner'>
            <h1><span>go play</span>was gonna</h1>
            <div class='text'>
              <p>You'll never know if you don't go You'll never shine if you don't glow</p>
            </div>
            <div class='link'>
              <p>It's a cool place and they say it gits colder</p>
            </div>
          </div>
        </div>
      </div>
      <div class='cardwrap'>
        <div class='card'>
          <div class='inner'>
            <h1><span>Hey Now</span>roll me</h1>
            <div class='text'>
              <p>You're bundled up now, wait till you git older But the meteor men beg to differ</p>
            </div>
            <div class='link'>
              <p>Judging by the hole in the satellite picture</p>
            </div>
          </div>
        </div>
      </div>
      <div class='cardwrap'>
        <div class='card'>
          <div class='inner'>
            <h1><span>you're a rockstar</span>I ain't the</h1>
            <div class='text'>
              <p>The ice we skate is getting pretty thin</p>
            </div>
            <div class='link'>
              <p>The water's getting warm so you might as well swim</p>
            </div>
          </div>
        </div>
      </div>
      <div class='cardwrap'>
        <div class='card'>
          <div class='inner'>
            <h1><span>get the show on</span>sharpest tool</h1>
            <div class='text'>
              <p>My world's on fire, how about yours? That's the way I like it and I never get bored</p>
            </div>
            <div class='link'>
              <p>Somebody once asked could I spare some change for gas?</p>
            </div>
          </div>
        </div>
      </div>
      <div class='cardwrap'>
        <div class='card'>
          <div class='inner'>
            <h1><span>get paid</span>in the shed</h1>
            <div class='text'>
              <p>I need to get myself away from this place I said yep what a concept</p>
            </div>
            <div class='link'>
              <p>I could use a little fuel myself And we could all use a little change</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>




</body>
</html>