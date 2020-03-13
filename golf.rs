use std::collections::HashMap;
fn main(){
    let map: HashMap<&str, i32> = [("albatross", -3),("eagle", -2),("birdie", -1),("par",0),("bogey",1),("double-bogey",2),("triple-bogey",3)].iter().cloned().collect();

    let input_list = ["eagle" , "bogey" , "par" , "bogey" , "double-bogey" , "birdie" ,"bogey" ,"par" , "birdie" ,"par" ,"par" ,"par", "par" ,"par" , "bogey" , "eagle" , "bogey" , "par"];

    let mut  sum = 0;
    
    for x in input_list.iter(){
	      match map.get::<str>(&x.to_string()){
		        Some(value) => {
			        sum = sum + value;  
		        }
		        None =>{
			        println!("something went wrong");
		        }
	      }
    }
    if (sum > 0) {
	    println!("{} over par",sum);
    }
    else if(sum == 0) {
	    println!("par");
    }
    else {
	    println!("{} under par",sum);
    }
}
