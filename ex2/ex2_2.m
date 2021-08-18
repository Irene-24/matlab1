f = imread(".\images\desk.jpg");
%directory to save genarated images
dir=".\images\qualities\";
qualities = [50,25,15,5,0];

%loop through and generate each file for each quantity
for n = 1 : length(qualities)
    imwrite(f,dir+"q_"+qualities(n)+".jpg","quality",qualities(1,n))
end
