for j in {1..10}; do  
    for i in {1..1000}; do  
        curl -s -o /dev/null -w "%{http_code}\n" http://3.235.195.199:30239/webapp/ &  
    done  
    wait  # Wait for all background curl processes to finish before next iteration
done
