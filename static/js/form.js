
let stateselection = document.getElementById('states');
let districtselection = document.getElementById('districts');

const india = {

    "TamilNadu": [
      "Ariyalur", "Chengalpattu", "Chennai", "Coimbatore", "Cuddalore",
      "Dharmapuri", "Dindigul", "Erode", "Kallakurichi", "Kancheepuram",
      "Kanyakumari", "Karur", "Krishnagiri", "Madurai", "Mayiladuthurai",
      "Nagapattinam", "Namakkal", "Nilgiris", "Perambalur", "Pudukkottai",
      "Ramanathapuram", "Ranipet", "Salem", "Sivaganga", "Tenkasi",
      "Thanjavur", "Theni", "Thoothukudi", "Tiruchirappalli", "Tirunelveli",
      "Tirupathur", "Tiruppur", "Tiruvallur", "Tiruvannamalai", "Tiruvarur",
      "Vellore", "Viluppuram", "Virudhunagar"
    ],

    "AndhraPradesh": [
    "Anakapalli", "Anantapur", "Annamayya", "Bapatla", "Chittoor",
    "Dr. B.R. Ambedkar Konaseema", "East Godavari", "Eluru", "Guntur",
    "Kakinada", "Krishna", "Kurnool", "Nandyal", "NTR", "Palnadu",
    "Parvathipuram Manyam", "Prakasam", "Srikakulam", "Sri Potti Sriramulu Nellore",
    "Tirupati", "Visakhapatnam", "Vizianagaram", "West Godavari", "YSR"
    ],

    "ArunachalPradesh": [
    "Anjaw", "Changlang", "Dibang Valley", "East Kameng", "East Siang",
    "Kamle", "Kra Daadi", "Kurung Kumey", "Lepa Rada", "Lohit",
    "Longding", "Lower Dibang Valley", "Lower Siang", "Lower Subansiri",
    "Namsai", "Pakke Kessang", "Papum Pare", "Shi Yomi", "Siang",
    "Tawang", "Tirap", "Upper Siang", "Upper Subansiri", "West Kameng",
    "West Siang"
  ],

  "Assam": [
    "Baksa", "Barpeta", "Biswanath", "Bongaigaon", "Cachar",
    "Charaideo", "Chirang", "Darrang", "Dhemaji", "Dhubri",
    "Dibrugarh", "Dima Hasao", "Goalpara", "Golaghat", "Hailakandi",
    "Jorhat", "Kamrup Metropolitan", "Kamrup", "Karbi Anglong",
    "Karimganj", "Kokrajhar", "Lakhimpur", "Majuli", "Morigaon",
    "Nagaon", "Nalbari", "Sivasagar", "Sonitpur", "South Salmara-Mankachar",
    "Tinsukia", "Udalguri", "West Karbi Anglong"
  ],

  "Bihar": [
    "Araria", "Arwal", "Aurangabad", "Banka", "Begusarai",
    "Bhagalpur", "Bhojpur", "Buxar", "Darbhanga", "East Champaran (Motihari)",
    "Gaya", "Gopalganj", "Jamui", "Jehanabad", "Kaimur (Bhabua)",
    "Katihar", "Khagaria", "Kishanganj", "Lakhisarai", "Madhepura",
    "Madhubani", "Munger (Monghyr)", "Muzaffarpur", "Nalanda", "Nawada",
    "Patna", "Purnia (Purnea)", "Rohtas", "Saharsa", "Samastipur",
    "Saran", "Sheikhpura", "Sheohar", "Sitamarhi", "Siwan",
    "Supaul", "Vaishali", "West Champaran"
  ],

  "Chhattisgarh": [
    "Balod", "Baloda Bazar", "Balrampur", "Bastar", "Bijapur",
    "Bilaspur", "Dakshin Bastar Dantewada", "Dhamtari", "Durg",
    "Gariaband", "Gaurela Pendra Marwahi", "Janjgir-Champa", "Jashpur",
    "Kabirdham (Kawardha)", "Kanker", "Kondagaon", "Korba", "Koriya",
    "Mahasamund", "Mungeli", "Narayanpur", "Raigarh", "Raipur",
    "Rajnandgaon", "Sukma", "Surajpur", "Surguja"
  ],

  "Goa": [
    "North Goa",
    "South Goa"
  ],

  "Gujarat": [
    "Ahmedabad", "Amreli", "Anand", "Aravalli", "Banaskantha",
    "Bharuch", "Bhavnagar", "Botad", "Chhota Udaipur", "Dahod",
    "Dang", "Devbhoomi Dwarka", "Gandhinagar", "Gir Somnath",
    "Jamnagar", "Junagadh", "Kheda", "Kutch", "Mahisagar",
    "Mehsana", "Morbi", "Narmada", "Navsari", "Patan",
    "Porbandar", "Rajkot", "Sabarkantha", "Surat", "Surendranagar",
    "Tapi", "Vadodara", "Valsad"
  ],

  "Haryana": [
    "Ambala", "Bhiwani", "Charkhi Dadri", "Faridabad", "Fatehabad",
    "Gurgaon (Gurugram)", "Hisar", "Jhajjar", "Jind", "Kaithal",
    "Karnal", "Kurukshetra", "Mahendragarh", "Mewat (Nuh)", "Palwal",
    "Panchkula", "Panipat", "Rewari", "Rohtak", "Sirsa",
    "Sonipat", "Yamunanagar"
  ],

  "HimachalPradesh": [
    "Bilaspur", "Chamba", "Hamirpur", "Kangra", "Kinnaur",
    "Kullu", "Lahaul and Spiti", "Mandi", "Shimla", "Sirmaur",
    "Solan", "Una"
  ],

  "Jharkhand": [
    "Bokaro", "Chatra", "Deoghar", "Dhanbad", "Dumka",
    "East Singhbhum", "Garhwa", "Giridih", "Godda", "Gumla",
    "Hazaribagh", "Jamtara", "Khunti", "Koderma", "Latehar",
    "Lohardaga", "Pakur", "Palamu", "Ramgarh", "Ranchi",
    "Sahibganj", "Saraikela Kharsawan", "Simdega", "West Singhbhum"
  ],

  "Karnataka": [
    "Bagalkot", "Bangalore Rural", "Bangalore Urban", "Belagavi", "Bellary",
    "Bidar", "Chamarajanagar", "Chikballapur", "Chikkamagaluru", "Chitradurga",
    "Dakshina Kannada", "Davanagere", "Dharwad", "Gadag", "Hassan",
    "Haveri", "Kalaburagi", "Kodagu", "Kolar", "Koppal",
    "Mandya", "Mysuru", "Raichur", "Ramanagara", "Shivamogga",
    "Tumakuru", "Udupi", "Uttara Kannada", "Vijayapura", "Yadgir"
  ],

  "Kerala": [
    "Alappuzha", "Ernakulam", "Idukki", "Kannur", "Kasaragod",
    "Kollam", "Kottayam", "Kozhikode", "Malappuram", "Palakkad",
    "Pathanamthitta", "Thiruvananthapuram", "Thrissur", "Wayanad"
  ],

  "MadhyaPradesh": [
    "Agar Malwa", "Alirajpur", "Anuppur", "Ashoknagar", "Balaghat",
    "Barwani", "Betul", "Bhind", "Bhopal", "Burhanpur",
    "Chhatarpur", "Chhindwara", "Damoh", "Datia", "Dewas",
    "Dhar", "Dindori", "Guna", "Gwalior", "Harda",
    "Hoshangabad", "Indore", "Jabalpur", "Jhabua", "Katni",
    "Khandwa", "Khargone", "Mandla", "Mandsaur", "Morena",
    "Narsinghpur", "Neemuch", "Panna", "Raisen", "Rajgarh",
    "Ratlam", "Rewa", "Sagar", "Satna", "Sehore",
    "Seoni", "Shahdol", "Shajapur", "Sheopur", "Shivpuri",
    "Sidhi", "Singrauli", "Tikamgarh", "Ujjain", "Umaria",
    "Vidisha"
  ],

  "Maharashtra": [
    "Ahmednagar", "Akola", "Amravati", "Aurangabad", "Beed",
    "Bhandara", "Buldhana", "Chandrapur", "Dhule", "Gadchiroli",
    "Gondia", "Hingoli", "Jalgaon", "Jalna", "Kolhapur",
    "Latur", "Mumbai City", "Mumbai Suburban", "Nagpur", "Nanded",
    "Nandurbar", "Nashik", "Osmanabad", "Palghar", "Parbhani",
    "Pune", "Raigad", "Ratnagiri", "Sangli", "Satara",
    "Sindhudurg", "Solapur", "Thane", "Wardha", "Washim",
    "Yavatmal"
  ],

  "Manipur": [
    "Bishnupur", "Chandel", "Churachandpur", "Imphal East", "Imphal West",
    "Jiribam", "Kakching", "Kamjong", "Kangpokpi", "Noney",
    "Pherzawl", "Senapati", "Tamenglong", "Tengnoupal", "Thoubal",
    "Ukhrul"
  ],

  "Meghalaya": [
    "East Garo Hills", "East Jaintia Hills", "East Khasi Hills", "North Garo Hills",
    "Ri Bhoi", "South Garo Hills", "South West Garo Hills", "South West Khasi Hills",
    "West Garo Hills", "West Jaintia Hills", "West Khasi Hills"
  ],

  "Mizoram": [
    "Aizawl", "Champhai", "Kolasib", "Lawngtlai", "Lunglei",
    "Mamit", "Saiha", "Serchhip"
  ],

  "Nagaland": [
    "Dimapur", "Kiphire", "Kohima", "Longleng", "Mokokchung",
    "Mon", "Peren", "Phek", "Tuensang", "Wokha",
    "Zunheboto"
  ],

  "Odisha": [
    "Angul", "Balangir", "Balasore", "Bargarh", "Bhadrak",
    "Boudh", "Cuttack", "Deogarh", "Dhenkanal", "Gajapati",
    "Ganjam", "Jagatsinghpur", "Jajpur", "Jharsuguda", "Kalahandi",
    "Kandhamal", "Kendrapara", "Kendujhar (Keonjhar)", "Khordha", "Koraput",
    "Malkangiri", "Mayurbhanj", "Nabarangpur", "Nayagarh", "Nuapada",
    "Puri", "Rayagada", "Sambalpur", "Sonepur", "Sundergarh"
  ],

  "Punjab": [
    "Amritsar", "Barnala", "Bathinda", "Faridkot", "Fatehgarh Sahib",
    "Fazilka", "Firozpur", "Gurdaspur", "Hoshiarpur", "Jalandhar",
    "Kapurthala", "Ludhiana", "Mansa", "Moga", "Muktsar",
    "Pathankot", "Patiala", "Rupnagar", "Sangrur", "SAS Nagar (Mohali)",
    "Shahid Bhagat Singh Nagar", "Tarn Taran"
  ],

  "Rajasthan": [
    "Ajmer", "Alwar", "Banswara", "Baran", "Barmer",
    "Bharatpur", "Bhilwara", "Bikaner", "Bundi", "Chittorgarh",
    "Churu", "Dausa", "Dholpur", "Dungarpur", "Hanumangarh",
    "Jaipur", "Jaisalmer", "Jalore", "Jhalawar", "Jhunjhunu",
    "Jodhpur", "Karauli", "Kota", "Nagaur", "Pali",
    "Pratapgarh", "Rajsamand", "Sawai Madhopur", "Sikar", "Sirohi",
    "Sri Ganganagar", "Tonk", "Udaipur"
  ],

  "Sikkim": [
    "East Sikkim", "North Sikkim", "South Sikkim", "West Sikkim"
  ],

  "Telangana": [
    "Adilabad", "Bhadradri Kothagudem", "Hyderabad", "Jagtial", "Jangaon",
    "Jayashankar Bhupalpally", "Jogulamba Gadwal", "Kamareddy", "Karimnagar",
    "Khammam", "Komaram Bheem Asifabad", "Mahabubabad", "Mahabubnagar",
    "Mancherial", "Medak", "Medchal Malkajgiri", "Mulugu", "Nagarkurnool",
    "Nalgonda", "Nirmal", "Nizamabad", "Peddapalli", "Rajanna Sircilla",
    "Rangareddy", "Sangareddy", "Siddipet", "Suryapet", "Vikarabad",
    "Wanaparthy", "Warangal (Urban)", "Warangal (Rural)", "Yadadri Bhuvanagiri"
  ],

  "Tripura": [
    "Dhalai", "Gomati", "Khowai", "North Tripura", "Sepahijala",
    "South Tripura", "Unakoti", "West Tripura"
  ],

  "UttarPradesh": [
    "Agra", "Aligarh", "Ambedkar Nagar", "Amethi", "Amroha",
    "Auraiya", "Azamgarh", "Baghpat", "Bahraich", "Ballia",
    "Balrampur", "Banda", "Barabanki", "Bareilly", "Basti",
    "Bhadohi", "Bijnor", "Bulandshahr", "Chandauli", "Chitrakoot",
    "Deoria", "Etah", "Etawah", "Faizabad (Ayodhya)", "Farrukhabad",
    "Fatehpur", "Firozabad", "Gautam Buddha Nagar", "Ghaziabad", "Ghazipur",
    "Gonda", "Gorakhpur", "Hamirpur", "Hapur", "Hardoi",
    "Hathras", "Jalaun", "Jaunpur", "Jhansi", "Kannauj",
    "Kanpur Dehat", "Kanpur Nagar", "Kasganj", "Kaushambi", "Kushinagar",
    "Lakhimpur Kheri", "Lalitpur", "Lucknow", "Maharajganj", "Mahoba",
    "Mainpuri", "Mathura", "Mau", "Meerut", "Mirzapur",
    "Moradabad", "Muzaffarnagar", "Pilibhit", "Pratapgarh", "Raebareli",
    "Rampur", "Saharanpur", "Sant Kabir Nagar", "Shahjahanpur", "Shamli",
    "Shravasti", "Siddharth Nagar", "Sitapur", "Sonbhadra", "Sultanpur",
    "Unnao", "Varanasi"
  ],

  "Uttarakhand": [
    "Almora", "Bageshwar", "Chamoli", "Champawat", "Dehradun",
    "Haridwar", "Nainital", "Pauri Garhwal", "Pithoragarh", "Rudraprayag",
    "Tehri Garhwal", "Udham Singh Nagar", "Uttarkashi"
  ],

  "WestBengal": [
    "Alipurduar", "Bankura", "Birbhum", "Cooch Behar", "Dakshin Dinajpur",
    "Darjeeling", "Hooghly", "Howrah", "Jalpaiguri", "Jhargram",
    "Kalimpong", "Kolkata", "Malda", "Murshidabad", "Nadia",
    "North 24 Parganas", "Paschim Bardhaman", "Paschim Medinipur", "Purba Bardhaman",
    "Purba Medinipur", "Purulia", "South 24 Parganas", "Uttar Dinajpur"
  ]

  };
  

  Object.keys(india).forEach(states => {
    const option = document.createElement('option');
    option.value = states;
    option.textContent = states;
    stateselection.appendChild(option);  

  })
    
  stateselection.addEventListener('input',()=>{   
    districtselection.innerHTML = '<option value="" selected disabled>-- Select District --</option>';  
     let districtselct = india[stateselection.value]
     districtselct.forEach(dis =>{
        const option = document.createElement('option');
        option.value = dis;
        option.textContent = dis;
        districtselection.appendChild(option);
     })
  })

      document.addEventListener('DOMContentLoaded', function () {
      const departmentSelect = document.getElementById('department');
      const subCategorySelect = document.getElementById('subCategory');

      departmentSelect.addEventListener('change', function () {
        const selectedDeptId = this.value;
        subCategorySelect.innerHTML = '<option value="">-- Select SubCategory --</option>';
        allSubcategories
          .filter(sub => sub.department_id === selectedDeptId)
          .forEach(sub => {
            const option = document.createElement('option');
            option.value = sub.id;
            option.textContent = sub.name;
            subCategorySelect.appendChild(option);
          });
      });

      document.querySelector('.user-icon').addEventListener('click', () => {
        document.getElementById('profileSidebar').classList.add('active');
      });

      document.getElementById('closeSidebar').addEventListener('click', () => {
        document.getElementById('profileSidebar').classList.remove('active');
      });

      window.addEventListener('click', (event) => {
        const sidebar = document.getElementById('profileSidebar');
        if (!sidebar.contains(event.target) && !event.target.classList.contains('user-icon')) {
          sidebar.classList.remove('active');
        }
      });

      document.querySelector('.close').onclick = function () {
        document.getElementById("complaintModal").style.display = "none";
      }

      document.getElementById("openComplaintModal").onclick = function () {
        document.getElementById("complaintModal").style.display = "block";
      }
    });

    function enableEdit() {
      document.getElementById('profileDisplay').style.display = 'none';
      document.getElementById('profileEdit').style.display = 'flex';
    }

    function cancelEdit() {
      document.getElementById('profileEdit').style.display = 'none';
      document.getElementById('profileDisplay').style.display = 'block';
    }



      function showSimplePopup(message) {
    const existing = document.getElementById('simple-popup');
    if (existing) {
      existing.remove();
    }
    
    const popup = document.createElement('div');
    popup.id = 'simple-popup';
    popup.textContent = message;
    
    document.body.appendChild(popup);
    
    setTimeout(() => {
      popup.classList.add('hide');
      setTimeout(() => popup.remove(), 500);
    }, 3000);
  }
  