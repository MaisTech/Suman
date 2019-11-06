	function deptFunction(){

			var x = document.getElementById('empdep').value;
            


			 if(x == ""){
				document.getElementById('vsdept').innerHTML =" * Please fill the Department field";
				return false;
			}  
			if((x.length <= 2) || (x.length > 20)) {
				document.getElementById('vsdept').innerHTML =" * Department length must be between 2 and 20";
				return false;	
			}
			if(!isNaN(x)){
				document.getElementById('vsdept').innerHTML =" * only characters are allowed";
				return false;
			}
			else {
			document.getElementById('vsdept').innerHTML ="";
				return false;
			}
	}
	
	
	function empFunction(){

		var x = document.getElementById('empnam').value;
        


		 if(x == ""){
			document.getElementById('vsemp').innerHTML =" * Please fill the Employee name field";
			return false;
		}  
		if((x.length <= 2) || (x.length > 20)) {
			document.getElementById('vsemp').innerHTML =" * Employee name length must be between 2 and 20";
			return false;	
		}
		if(!isNaN(x)){
			document.getElementById('vsemp').innerHTML =" * only characters are allowed";
			return false;
		}
		else {
		document.getElementById('vsemp').innerHTML ="";
			return false;
		}
}
	
	
	function mobFunction(){
		var y = document.getElementById('empmob').value;
					if(y == ""){
						document.getElementById('vsmob').innerHTML =" ** Please fill the mobile number field";
						return false;
					}
					else if(isNaN(y)){
					
						document.getElementById('vsmob').innerHTML =" ** User must write digits only not characters";
						return false;
					}
					else if(y.length!=10){
						document.getElementById('vsmob').innerHTML =" ** Mobile number must be 10 digits only";
						return false;
					}
					else {
					document.getElementById('vsmob').innerHTML ="";
					}
					

				}
	
	
	function mailFunction(){
		var y = document.getElementById('empemail').value;
					if(y == ""){
						document.getElementById('vsmail').innerHTML =" * Please fill the mail ID field";
						return false;
					}
					else if(y.indexOf('@')<=0){
					
						document.getElementById('vsmail').innerHTML =" * @ Invalid position";
						return false;
					}
					else if((y.charAt(y.length-3)!='.')&&(y.charAt(y.length-4)!='.')){
						document.getElementById('vsmail').innerHTML =" *Invalid email domain name.";
						return false;
					}
					else {
					document.getElementById('vsmail').innerHTML ="";
					}
					

				}
	
	
	
	
	function accnoFunction(){
		var y = document.getElementById('empacc').value;
					if(y == ""){
						document.getElementById('vsaccno').innerHTML =" ** Please fill the Account number field";
						return false;
					}
					else if(isNaN(y)){
					
						document.getElementById('vsaccno').innerHTML =" ** Account number must write digits only.";
						return false;
					}
					else if(y.length!=10){
						document.getElementById('vsaccno').innerHTML =" ** Account number must be 10 digits only";
						return false;
					}
					else {
					document.getElementById('vsaccno').innerHTML ="";
					}
					

				}
	
	
	
	