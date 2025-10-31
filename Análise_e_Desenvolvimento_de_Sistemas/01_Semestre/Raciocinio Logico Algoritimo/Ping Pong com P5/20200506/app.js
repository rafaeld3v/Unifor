var player1 = {
    x: 50,
    y: 200,
    w: 50,
    h: 150,
    vel: 5
}

var player2 = {
    x: 500,
    y: 200,
    w: 50,
    h: 150,
    vel: 5
}

var ball = {
    x: 275,
    y: 275,
    r: 50,
    vel: 1,
    toLeft: false
}

function setup(){
    createCanvas(600, 600);

    if(random() >= 0.5){
        ball.toLeft = true;
    }

}

function draw(){

    background(52);

    if(keyIsDown(UP_ARROW)){
        player1.y -= player1.vel;
        if(player1.y < 0){
            player1.y = 0;
        }
    } else if(keyIsDown(DOWN_ARROW)){
        player1.y += player1.vel;
        if(player1.y + player1.h > 600){
            player1.y = 600 - player1.h;
        }
    } 
    
    if(keyIsDown(81)){
        player2.y -= player2.vel;
        if(player2.y < 0){
            player2.y = 0;
        }
    } else if(keyIsDown(65)){
        player2.y += player2.vel;
        if(player2.y + player2.h > 600){
            player2.y = 600 - player2.h;
        }
    }

    if(barruada(ball, player1)){
        ball.toLeft = false;
    }
    if(barruada(ball, player2)){
        ball.toLeft = true;
    }
    
    if(ball.toLeft){
        ball.x += ball.vel;
    } else {
        ball.x -= ball.vel;
    }


    fill(255, 0, 0);
    rect(player1.x, player1.y, player1.w, player1.h);

    fill(0, 255, 0);
    rect(player2.x, player2.y, player2.w, player2.h);

    fill(255);
    circle(ball.x, ball.y, ball.r);

}

function barruada(ball, player){

    if(ball.toLeft){

        if(ball.x - ball.r < player.x){
            if(ball.y - ball.r < player.y)
            return true;
        } else {
            return false
        }

    } else{

        if(ball.x + ball.r > player.x){
            if(ball.y + ball.r > player.y)
            return true;
        } else {
            return false
        }

    }
    
}