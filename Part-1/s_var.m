% USER DEFINED FUNCTION TO CALCULATE STOCK MARKET VARIANCE
function [date_data, svar] = s_var(data, date)

dt = date(1,1);
m = month(dt);
y = year(dt);
count = 0;
ncount = 1;
for i=1:size(date,1)
    if((month(date(i,1))==m)&&(year(date(i,1))==y)&&(i~=size(date,1)))
        count = count +1;
        month_data(count,1) = data(i,1);
    else
        if (i==size(date,1))
            count = count +1;
            month_data(count,1) = data(i,1);
        end
        if (m==1||m==3||m==5||m==7||m==8||m==10||m==12)
            date_data(ncount,1) =  datetime(y,m,31);
        elseif (m==4||m==6||m==9||m==11)
            date_data(ncount,1) =  datetime(y,m,30);
        else
            if ((mod(y,400)==0)&&(mod(y,100)==0))
                date_data(ncount,1) =  datetime(y,m,29);
            elseif ((mod(y,4)==0)&&(mod(y,100)~=0))
                date_data(ncount,1) =  datetime(y,m,29);
            else
                date_data(ncount,1) =  datetime(y,m,28);
            end
        end
        monthly_ret = month_data(2:end,1) - month_data(1:end-1,1);
        svar(ncount,1) = sqrt(var(monthly_ret));
        m = month(date(i,1));
        y = year(date(i,1));
        count = 1;
        ncount = ncount + 1;
        clear month_data;
        clear monthly_ret;
        month_data(count,1) = data(i,1);
    end
end
