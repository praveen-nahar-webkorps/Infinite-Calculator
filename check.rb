$s="";
$hs = [];

def calci(inp1,op,inp2,chk)
    if chk==0
        $s += ("#{inp1} #{op} #{inp2}");
        chk=1
     else
        $s += (" #{op} #{inp2}")
    end
    if(op == '+')
        ans = inp1+inp2;
        return ans;
    elsif(op == '-')
        ans = inp1-inp2;
        return ans;
    elsif(op == '*')
        ans = inp1*inp2;
        return ans;
    elsif(op == '/')
        ans = inp1/inp2;
        return ans;
    else
        print "Write appropriate operator like +,-,*,/  ";
        return nil
    end
end


while true
    puts "Enter a number, how many times you wanna perform";
    t = gets.chomp.to_i; 
    until t>1
        puts "Minimum two operands are required to proceed";
        t=gets.chomp.to_i;
    end

    $f = 0;
    $res = 0;
    arr = [];
    cnt = 0;

    for i in 0...t-1
        if $f == 0
            while cnt<2
                puts "Enter a number";
                a = gets.chomp.to_i;
                arr.push(a);
                cnt += 1;
            end

            $f=1;

            puts "Enter a operator";
            op = gets.chomp;

            until op=='+'||op=='-'||op=='*'||op=='/'
                puts "Enter valid operator:  "
                op=gets.chomp;
                if op=='+'||op=='-'||op=='*'||op=='/'
                break;
                end
            end
            $res = calci(arr[0],op, arr[1],0);
        else
            puts "Enter a number";
            a = gets.chomp.to_i;
            arr.push(a);

            puts "Enter a operator";
            op = gets.chomp;

            until op=='+'||op=='-'||op=='*'||op=='/'
                puts "Enter valid operator:  "
                op=gets.chomp;
                if op=='+'||op=='-'||op=='*'||op=='/'
                break;
                end
            end
            
            $res = calci($res,op, arr[-1],1);
        end
    end

    $s += (" =  #{$res}")
        $hs.push($s)
        puts "Your calculation= #{$s}"
        $s=""
    puts "Enter the y/Y to continue, h/H for history & enter n/N to exit"
    ch=gets.chomp;

    until ch=='y'||ch=='Y'||ch=='h'||ch=='H' || ch=='n' || ch== 'N'
        puts "Enter valid character like y/Y to continue, h/H for history & enter n/N to exit"
        ch=gets.chomp;
        if ch=='y'||ch=='Y'||ch=='h'||ch=='H' || ch=='n' || ch== 'N'
        break;
        end
    end
    
    if ch=='y'|| ch=='Y'
        next
    elsif ch=='h' || ch== 'H'
        puts $hs
        puts "Enter the y/Y to continue & enter the n/N to exit: "
        ch=gets.chomp;
        
        until ch=='y'||ch=='Y'|| ch=='n' || ch== 'N'
            puts "Enter valid character like y/Y to continue & enter n/N to exit"
            ch=gets.chomp;
            if ch=='y'||ch=='Y' || ch=='n' || ch== 'N'
            break;
            end
        end

        if ch=='y' || ch=='Y'
            next
        elsif ch=='n' || ch== 'N'
            break;
        end
    elsif ch=='n' || ch=='N'
        break;
    end
end




    
    


    

