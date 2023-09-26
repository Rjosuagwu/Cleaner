//IMAGES REFERENCES ARE BELOW

int a = 5; //will help load each of the images into the program

//variables to tell the user the amount of litter collected
int k = 0;
int l = 0;
int m = 0;
int q = 0;

//variable to change from a scnene to a fact
int v = 0;



PImage [] images = new PImage[6]; // will store each of the background scenes
PImage [] img = new PImage[6]; // will store the images of the facts on a sustainable environment

/*these lines of code are variables that will store the litter that will be visible within the scene
and will allow me to call back on them when i need the litter to appear*/
PImage rubbish;
PImage paper;
PImage plasticbag;

/*variable to store the  x coordinate of each randomised piece of litter
these are in arrays to minimise the used of many singular variables preventing the reuse of letters
i concluded that this would be the best decision as i notice the many repeats of code within my program
and deemed it simply impossible to use singular variables*/
int [] c = new int[5];
int [] d = new int[5];
int [] e = new int[5];
int [] f = new int[5];
int [] p = new int[5];
  

//variables for the y coordinate position of the litter each variable being used within a different scene

int [] g = new int[5];
int [] h = new int[5];
int [] n = new int[5];
int [] j = new int[5];
int [] o = new int[5];

//will apply the background of the staring scene and will then increase 
int b = 1;

void setup()  {
  
  size(930,610);   
  
  //a loop to efficiently load all necessary images into program 
  for(int i=1;i<=a;i++)
  {
    images [i] = loadImage("img"+i+".jpeg");  
    img [i] = loadImage("images"+i+".jpeg");
    rubbish = loadImage("rubbish.png");
    paper = loadImage("ballsmaller.png");
    plasticbag = loadImage("plasticbag.png");
    
  }
  
  //array variables for the x coordinate position of the litter (randomised)
for(int i = 0;i<=4;i++)
{
  c[i] = int(random(30,900));
}
for(int i = 0;i<=4;i++)
{
  d[i] = int(random(30,900));
}
for(int i = 0;i<=4;i++)
{
  e[i] = int(random(30,900));
}
for(int i = 0;i<=4;i++)
{
  f[i] = int(random(30,900));
}
for(int i = 0;i<=4;i++)
{
  p[i] = int(random(30,900));
}


/////////////////

  //variables for the y coordinate position of the litter(randomised)
for(int i = 0;i<=4;i++)
{
  g[i] = int(random(425,535));
}
for(int i = 0;i<=4;i++)
{
  h[i] = int(random(425,535));
}
for(int i = 0;i<=4;i++)
{
  n[i] = int(random(200,535));
}
for(int i = 0;i<=4;i++)
{
  j[i] = int(random(425,535));
}
for(int i = 0;i<=4;i++)
{
  o[i] = int(random(425,535));
}

//////



}

void draw()  {
  
  if(b==1)
  {
    image(images[b], 0, 0);    //apply first scene
    textSize(35);
    fill(255,0,0);
    text("Rubbish to find: 4",50,40); //promts the user with a goal to acheive
    
    
    image(rubbish, c[0], g[0]);    //randomly scatters the litter over a certain area
    image(rubbish, c[1], g[1]);
    image(rubbish, c[2], g[2]);
    image(rubbish, c[3], g[3]);
    
    
    
    //the following piece of code was inspired by the use of the 'mouse X' within Lab 2 in which we made the bat and ball game
    if (mousePressed)
    {
      if ((mouseX>c[0] && mouseX<c[0]+70) &&(mouseY>g[0] && mouseY<g[0]+110))    //function to help tell the user they have succesfully picked up litter
      {
        k=3;
      }
    }
        if (mousePressed)
    {
      if ((mouseX>c[1] && mouseX<c[1]+70) &&(mouseY>g[1] && mouseY<g[1]+110))      //function to help tell the user they have succesfully picked up litter
      {
        l=3;
      }
    }
            if (mousePressed)
    {
      if ((mouseX>c[2] && mouseX<c[2]+70) &&(mouseY>g[2] && mouseY<g[2]+110))        //function to help tell the user they have succesfully picked up litter
      {
        m=3;
      }
    }
                if (mousePressed)
    {
      if ((mouseX>c[3] && mouseX<c[3]+70) &&(mouseY>g[3] && mouseY<g[3]+110))        //function to help tell the user they have succesfully picked up litter
      {
        q=3;
      }
    }
    
    //states that the litter has been found
    if (k>0)
    {
      textSize(20);    
      fill(255,0,0);
      text("Rubbish found",750,40);
    }
        if (l>0)
    {
      textSize(20);
      text("Rubbish found",750,70);
    }
        if (m>0)
    {
      textSize(20);
      text("Rubbish found",750,100);
    }
            if (q>0)
    {
      textSize(20);
      text("Rubbish found",750,130);
    }
    
    //resets all the variables to apply the same method to the next scene
    if (k>0 && l>0 && m>0 && q>0)
    {
      v=3;
      k=0;
      l=0;
      m=0;
      q=0;
      b=-2;
    }
  }
  
  //prompts the user with a fact and allows them to continue when ready
  if (v==3)
  {
    image(img[1],0,0);
  textSize(35);
  fill(0,0,0);
  text("Press Any Key To Continue",500,600);  
  
    if (keyPressed)
  {
    b=2;
    v=0;
    image(images[b], 0, 0);
  }
  }

//the program repeats for all 5 scenes

    if(b==2)
  {
    textSize(35);
    fill(255,0,0);
    text("Paper to find: 4",40,40);
    
    image(paper, d[0], h[0]);
    image(paper, d[1], h[1]);
    image(paper, d[2], h[2]);
    image(paper, d[3], h[3]);
    
        if (mousePressed)
    {
      if ((mouseX>d[0] && mouseX<d[0]+30) &&(mouseY>h[0] && mouseY<h[0]+37))
      {
        k=3;
      }
    }
        if (mousePressed)
    {
      if ((mouseX>d[1] && mouseX<d[1]+30) &&(mouseY>h[1] && mouseY<h[1]+37))
      {
        l=3;
      }
    }
            if (mousePressed)
    {
      if ((mouseX>d[2] && mouseX<d[2]+30) &&(mouseY>h[2] && mouseY<h[2]+37))
      {
        m=3;
      }
    }
                if (mousePressed)
    {
      if ((mouseX>d[3] && mouseX<d[3]+30) &&(mouseY>h[3] && mouseY<h[3]+37))
      {
        q=3;
      }
    }
    
        if (k>0)
    {
      textSize(20);
      fill(255,0,0);
      text("Paper found",750,40);
    }
        if (l>0)
    {
      textSize(20);
      text("Paper found",750,70);
    }
        if (m>0)
    {
      textSize(20);
      text("Paper found",750,100);
    }
            if (q>0)
    {
      textSize(20);
      text("Paper found",750,130);
    }
        if (k>0 && l>0 && m>0 && q>0)
    {
      v=4;
      b=-2;
      k=0;
      l=0;
      m=0;
      q=0;
    }
  
  }
  
    if (v==4)
  {
    image(img[2],0,0);
  textSize(35);
  fill(0,0,0);
  text("Press Any Key To Continue",500,600);
  
    if (keyPressed)
  {
    b=3;
    v=0;
    image(images[b], 0, 0);
  }
  }

  
    if(b==3)
  {
    textSize(35);
    fill(0,0,255);
    text("Plastic bags to find: 4",40,40);
    
    image(plasticbag, e[0], n[0]);
    image(plasticbag, e[1], n[1]);
    image(plasticbag, e[2], n[2]);
    image(plasticbag, e[3], n[3]);
    
            if (mousePressed)
    {
      if ((mouseX>e[0] && mouseX<e[0]+40) &&(mouseY>n[0] && mouseY<n[0]+47))
      {
        k=3;
      }
    }
        if (mousePressed)
    {
      if ((mouseX>e[1] && mouseX<e[1]+40) &&(mouseY>n[1] && mouseY<n[1]+47))
      {
        l=3;
      }
    }
            if (mousePressed)
    {
      if ((mouseX>e[2] && mouseX<e[2]+40) &&(mouseY>n[2] && mouseY<n[2]+47))
      {
        m=3;
      }
    }
                if (mousePressed)
    {
      if ((mouseX>e[3] && mouseX<e[3]+40) &&(mouseY>n[3] && mouseY<n[3]+47))
      {
        q=3;
      }
    }
    
            if (k>0)
    {
      textSize(20);
      fill(0,0,255);
      text("Plastic bag found",750,40);
    }
        if (l>0)
    {
      textSize(20);
      text("Plastic bag found",750,70);
    }
        if (m>0)
    {
      textSize(20);
      text("Plastic bag found",750,100);
    }
            if (q>0)
    {
      textSize(20);
      text("Plastic bag found",750,130);
    }
        if (k>0 && l>0 && m>0 && q>0)
    {
      v=5;
      b=-2;
      k=0;
      l=0;
      m=0;
      q=0;
    }
  
  }
  
    if (v==5)
  {
    image(img[3],0,0);
  textSize(35);
  fill(0,0,0);
  text("Press Any Key To Continue",500,600);
  
    if (keyPressed)
  {
    b=4;
    v=0;
    image(images[b], 0, 0);
  }
  }
  
    if(b==4)
  {
    textSize(35);
    fill(255,0,0);
    text("Paper to find: 4",40,40);
    
    image(paper, f[0], j[0]);
    image(paper, f[1], j[1]);
    image(paper, f[2], j[2]);
    image(paper, f[3], j[3]);
    
            if (mousePressed)
    {
      if ((mouseX>f[0] && mouseX<f[0]+30) &&(mouseY>j[0] && mouseY<j[0]+37))
      {
        k=3;
      }
    }
        if (mousePressed)
    {
      if ((mouseX>f[1] && mouseX<f[1]+30) &&(mouseY>j[1] && mouseY<j[1]+37))
      {
        l=3;
      }
    }
            if (mousePressed)
    {
      if ((mouseX>f[2] && mouseX<f[2]+30) &&(mouseY>j[2] && mouseY<j[2]+37))
      {
        m=3;
      }
    }
                if (mousePressed)
    {
      if ((mouseX>f[3] && mouseX<f[3]+30) &&(mouseY>j[3] && mouseY<j[3]+37))
      {
        q=3;
      }
    }
            if (k>0)
    {
      textSize(20);
      fill(255,0,0);
      text("Paper found",750,40);
    }
        if (l>0)
    {
      textSize(20);
      text("Paper found",750,70);
    }
        if (m>0)
    {
      textSize(20);
      text("Paper found",750,100);
    }
            if (q>0)
    {
      textSize(20);
      text("Paper found",750,130);
    }
        if (k>0 && l>0 && m>0 && q>0)
    {
      v=6;
      b=-2;
      k=0;
      l=0;
      m=0;
      q=0;
    }
  
  }
  
    if (v==6)
  {
    image(img[4],0,0);
  textSize(35);
  fill(0,0,0);
  text("Press Any Key To Continue",500,600);
  
    if (keyPressed)
  {
    b=5;
    v=0;
    image(images[b], 0, 0);
  }
  }
  
    if(b==5)
  {
    textSize(35);
    fill(255,0,0);
    text("Rubbish to find: 4",40,40);
    
    image(rubbish, p[0], o[0]);
    image(rubbish, p[1], o[1]);
    image(rubbish, p[2], o[2]);
    image(rubbish, p[3], o[3]);
    
        if (mousePressed)
    {
      if ((mouseX>p[0] && mouseX<p[0]+70) &&(mouseY>o[0] && mouseY<o[0]+110))
      {
        k=3;
      }
    }
        if (mousePressed)
    {
      if ((mouseX>p[1] && mouseX<p[1]+70) &&(mouseY>o[1] && mouseY<o[1]+110))
      {
        l=3;
      }
    }
            if (mousePressed)
    {
      if ((mouseX>p[2] && mouseX<p[2]+70) &&(mouseY>o[2] && mouseY<o[2]+110))
      {
        m=3;
      }
    }
                if (mousePressed)
    {
      if ((mouseX>p[3] && mouseX<p[3]+70) &&(mouseY>o[3] && mouseY<o[3]+110))
      {
        q=3;
      }
    }
    
    if (k>0)
    {
      textSize(20);
      fill(255,0,0);
      text("Rubbish found",750,40);
    }
        if (l>0)
    {
      textSize(20);
      text("Rubbish found",750,70);
    }
        if (m>0)
    {
      textSize(20);
      text("Rubbish found",750,100);
    }
            if (q>0)
    {
      textSize(20);
      text("Rubbish found",750,130);
    }
        if (k>0 && l>0 && m>0 && q>0)
    {
      v=7;
      b=-2;
      k=0;
      l=0;
      m=0;
      q=0;
      
    }
  
  }
  
    if (v==7)
  {
    image(img[5],0,0);  //thanks the user and concludes the game with a final fact
  textSize(35);
  fill(0,0,0);
  text("Thanks For Playing!!",500,500);
  fill(255,0,0);
  text("Press Any Key To Exit",500,600);
  
    if (keyPressed)
  {
   
    exit();
  }
  }
  


}

/*
REFERENCES

Image references:
Vecteezy.com
amazon.com
Freepik.com
creativemarket.com

Item references:
Alamy.com
Kingpng.com

Fact references:
Circularecology.com
*/
