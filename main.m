x=input("Enter your choice:\n1.Find diamater of the object\n2.Image filtering\n");
if(x==1)
    load flower.jpg;
    [file,path]=uigetfile({'*.jpg'});
    s=[path,file];
    a = imread(s);
    b = rgb2gray(a);
    be = imbinarize(b);
    figure(2),imshow(be);
    % using regionprops
    stats = regionprops('table',be, 'Area','EquivDiameter','Perimeter');
    % storing the values in other variables
    x = stats.Area;
    y = stats.EquivDiameter;
    z = stats.Perimeter;
    %using area to find the diameter
    r = sqrt(x/(4*pi))*0.2645;
    %using perimeter
    r1 =( z/(4*pi))*0.2645; 
    % using equivDiameter
    r3 = y*0.2645;
    a=imread(s);
    c = rgb2gray(a);
    b = imbinarize(c);
    imshow(b);
    h = imdistline(gca);
    api =iptgetapi(h);
    pause();
    dist =api.getDistance();
    u = menu('Choose measuring unit','Pixels','Centim','Meters');
    if (u==1)
        fprintf('The length of the object is: %0.2f Pixels\n',dist);
    elseif (u==2)
        dist_cm = dist*0.2645;
        fprintf('The length of the object is: %0.2f Centim\n',dist_cm);
    else
        dist_m = (dist*0.2645)/100;
        fprintf('The length of the object is: %0.2f Meters\n',dist_m);
    end
elseif(x==2)
    type=input("IMAGE FILTERS:\n1.Colour to black and white\n2.Blurring\n3.Image in Motion\n4.Edge detection\nWhat type of image filtering do you need:");
    load flower.jpg;
    [file,path]=uigetfile({'*.jpg'});
    s=[path,file];
    img=imread(s);
    if(type==1)
        subplot(1,2,1);
        imshow(img);
        title('Original Image');
        fimg=rgb2gray(img);
        subplot(1,2,2);
        imshow(fimg);
        title('Gray Scale Image');
    elseif(type==2)
        subplot(1,2,1);
        imshow(img);
        title('Original Image');
        iblurred=imgaussfilt(img,5);
        subplot(1,2,2);
        imshow(iblurred);
        title('Blurred Image');
    elseif(type==3)
        subplot(1,2,1);
        imshow(img)
        title('Original Image');
        H = fspecial('motion',20,45);
        MotionBlur = imfilter(img,H,'replicate');
        subplot(1,2,2);
        imshow(MotionBlur);
        title('Filtered Image');
    elseif(type==4)
        subplot(3,2,1);
        imshow(img)
        title('Original Image');
        y=rgb2gray(img);
        x1=imfill(y,'holes');
        subplot(3,2,2);
        imshow(x1)
        title('Binary Image filled with Holes');
        x2=edge(y,'Canny');
        subplot(3,2,3);
        imshow(x2)
        title('Canny Edge Detection');
        x3=edge(y,'prewitt');
        subplot(3,2,4);
        imshow(x3)
        title('Prewitt Edge Detection');
        x4=edge(y,'sobel');
        subplot(3,2,5);
        imshow(x4)
        title('Sobel Edge Detection');
        x5=edge(y,'roberts');
        subplot(3,2,6);
        imshow(x5)
        title('Robert Edge Detection')
    end
end



