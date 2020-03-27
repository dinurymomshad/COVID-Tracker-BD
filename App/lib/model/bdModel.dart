class BDModel {
//  returns division list in bangla
  List<String> getDivisionListBn(){
    List<String> divisionList = ['বরিশাল', 'চট্টগ্রাম', 'ঢাকা', 'খুলনা', 'রাজশাহী', 'রংপুর', 'সিলেট', 'ময়মনসিংহ'];
    return divisionList;
  }

//  returns district list in bangla
  List<String> getDistrictListBn(String division){
    List<String> districtList = [];
    switch(division){
      case 'বরিশাল':
        districtList = getBarisalDistrictListBn();
        break;
      case 'চট্টগ্রাম':
        districtList = getChattogramDistrictListBn();
        break;
      case 'ঢাকা':
        districtList = getDhakaDistrictListBn();
        break;
      case 'খুলনা':
        districtList = getKhulnaDistrictListBn();
        break;
      case 'রাজশাহী':
        districtList = getRajshahiDistrictListBn();
        break;
      case 'রংপুর':
        districtList = getRangpurDistrictListBn();
        break;
      case 'সিলেট':
        districtList = getSylhetDistrictListBn();
        break;
      case 'ময়মনসিংহ':
        districtList = getMymensinghDistrictListBn();
        break;
      default:
        break;
    }
    return districtList;
  }

//  returns sub-district(upazila) list in bangla

  List<String> getSubDistrictListBn(String district){
    List<String> upazilaList = [];
    switch(district){

//    চট্টগ্রাম বিভাগ

      case 'কুমিল্লা':
        upazilaList = ['দেবিদ্বার', 'বরুড়া', 'ব্রাহ্মণপাড়া', 'চান্দিনা', 'চৌদ্দগ্রাম', 'দাউদকান্দি', 'হোমনা',
          'লাকসাম', 'মুরাদনগর', 'নাঙ্গলকোট', 'কুমিল্লা সদর', 'মেঘনা', 'মনোহরগঞ্জ', 'সদর দক্ষিণ', 'তিতাস',
          'বুড়িচং', 'লালমাই'];
        break;

      case 'ফেনী':
        upazilaList = ['ছাগলনাইয়া উপজেলা', 'ফেনী সদর', 'সোনাগাজী উপজেলা', 'ফুলগাজী উপজেলা', 'পরশুরাম',
          'দাগনভূঞা'];
        break;

      case 'ব্রাহ্মণবাড়িয়া':
        upazilaList = ['ব্রাহ্মণবাড়িয়া সদর', 'কসবা', 'নাসিরনগর', 'সরাইল উপজেলা', 'আশুগঞ্জ', 'আখাউড়া',
          'নবীনগর', 'বাঞ্ছারামপুর', 'বিজয়নগর'];
        break;

      case 'রাঙ্গামাটি':
        upazilaList = ['রাঙ্গামাটি সদর', 'কাপ্তাই', 'কাউখালী', 'বাঘাইছড়ি', 'বরকল', 'লংগদু', 'রাজস্থলী',
          'বিলাইছড়ি', 'জুরাছড়ি', 'নানিয়ারচর'];
        break;

      case 'নোয়াখালী':
        upazilaList = ['নোয়াখালী', 'কোম্পানীগঞ্জ', 'বেগমগঞ্জ', 'হাতিয়া', 'সুবর্ণচর', 'কবিরহাট', 'সেনবাগ',
          'চাটখিল', 'সোনাইমুড়ী'];
        break;

      case 'চাঁদপুর':
        upazilaList = ['হাইমচর', 'কচুয়া', 'শাহরাস্তি', 'চাঁদপুর সদর', 'মতলব', 'হাজীগঞ্জ', 'মতলব',
          'ফরিদগঞ্জ'];
        break;

      case 'লক্ষ্মীপুর':
        upazilaList = ['লক্ষ্মীপুর সদর', 'কমলনগর' , 'রায়পুর', 'রামগতি', 'রামগঞ্জ'];
        break;

      case 'চট্টগ্রাম':
        upazilaList = ['রাঙ্গুনিয়া', ' সীতাকুন্ড উপজেলা', ' মীরসরাই', ' পটিয়া', ' সন্দ্বীপ', ' বাঁশখালী', ' বোয়ালখালী', ' আনোয়ারা', ' চন্দনাইশ', ' সাতকানিয়া', ' লোহাগাড়া',
          ' হাটহাজারী', ' ফটিকছড়ি', ' রাউজান', ' কর্ণফুলী'];
        break;

      case 'কক্সবাজার':
        upazilaList = ['কক্সবাজার সদর', ' চকরিয়া', ' কুতুবদিয়া', ' উখিয়া', ' মহেশখালী', ' পেকুয়া',
          ' রামু', ' টেকনাফ'];
        break;

      case 'খাগড়াছড়ি':
        upazilaList = ['খাগড়াছড়ি সদর', 'দিঘীনালা', ' পানছড়ি', ' লক্ষীছড়ি', ' মহালছড়ি', ' মানিকছড়ি',
          ' রামগড়', ' মাটিরাঙ্গা', ' গুইমারা'];
        break;

      case 'বান্দরবান':
        upazilaList = ['বান্দরবান সদর', ' আলীকদম', ' নাইক্ষ্যংছড়ি', ' রোয়াংছড়ি', ' লামা', ' রুমা',
          ' থানচি'];
        break;

//    রাজশাহী বিভাগ

      case 'সিরাজগঞ্জ':
        upazilaList = ['বেলকুচি', ' চৌহালি', ' কামারখন্দ', ' কাজীপুর', ' রায়গঞ্জ', ' শাহজাদপুর',
          ' সিরাজগঞ্জ', ' তাড়াশ', ' উল্লাপাড়া'];
        break;

      case 'পাবনা':
        upazilaList = ['সুজানগর', ' ঈশ্বরদী', ' ভাঙ্গুড়া', ' পাবনা সদর', ' বেড়া', ' আটঘরিয়া',
          'চাটমোহর', ' সাঁথিয়া', ' ফরিদপুর'];
        break;

      case 'বগুড়া':
        upazilaList = ['কাহালু উপজেলা', ' বগুড়া সদর', ' সারিয়াকান্দি', ' শাজাহানপুর', ' দুপচাচিঁয়া উপজেলা',
          ' আদমদিঘি উপজেলা', ' নন্দিগ্রাম', ' সোনাতলা উপজেলা', ' ধুনট উপজেলা', ' গাবতলী', ' শেরপুর উপজেলা',
          ' শিবগঞ্জ'];
        break;

      case 'রাজশাহী':
        upazilaList = ['পবা উপজেলা', 'দুর্গাপুর উপজেলা', ' মোহনপুর উপজেলা', ' চারঘাট উপজেলা',
          'পুঠিয়া উপজেলা', ' বাঘা উপজেলা', ' গোদাগাড়ী উপজেলা', ' তানোর উপজেলা', ' বাগমারা উপজেলা'];
        break;

      case 'নাটোর':
        upazilaList = ['নাটোর সদর', ' সিংড়া', ' বড়াইগ্রাম', ' বাগাতিপাড়া', ' লালপুর', ' গুরুদাসপুর', ' নলডাঙ্গা'];
        break;

      case 'জয়পুরহাট':
        upazilaList = ['আক্কেলপুর উপজেলা', ' কালাই উপজেলা', ' ক্ষেতলাল উপজেলা', ' পাঁচবিবি উপজেলা', ' জয়পুরহাট সদর'];
        break;

      case 'চাঁপাইনবাবগঞ্জ':
        upazilaList = ['চাঁপাইনবাবগঞ্জ সদর', ' গোমস্তাপুর', ' নাচোল', ' ভোলাহাট', ' শিবগঞ্জ'];
        break;

      case 'নওগাঁ':
        upazilaList = ['মহাদেবপুর উপজেলা', ' বদলগাছী উপজেলা', ' পত্নিতলা উপজেলা', 'ধামইরহাট উপজেলা',
          'নিয়ামতপুর উপজেলা', ' মান্দা উপজেলা', ' আত্রাই উপজেলা', ' রাণীনগরউপজেলা', ' নওগাঁ সদর',
          'পোরশা উপজেলা', ' সাপাহার'];
        break;

//    খুলনা বিভাগ

      case 'যশোর':
        upazilaList = ['মণিরামপুর', 'অভয়নগর', 'বাঘারপাড়া', 'চৌগাছা', 'ঝিকরগাছা', 'কেশবপুর', 'যশোর সদর', 'শার্শা'];
        break;

      case 'সাতক্ষীরা':
        upazilaList = ['আশাশুনি', 'দেবহাটা', 'কলারোয়া', 'সাতক্ষীরা সদর', 'শ্যামনগর', 'তালা', 'কালিগঞ্জ'];
        break;

      case 'মেহেরপুর':
        upazilaList = ['মুজিবনগর', 'মেহেরপুর সদর', 'গাংনী'];
        break;

      case 'নড়াইল':
        upazilaList = ['নড়াইল সদর', 'লোহাগড়া', 'কালিয়া'];
        break;

      case 'চুয়াডাঙ্গা':
        upazilaList = ['চুয়াডাঙ্গা সদর', 'আলমডাঙ্গা', 'দামুড়হুদা', 'জীবননগর'];
        break;

      case 'কুষ্টিয়া':
        upazilaList = ['কুষ্টিয়া সদর', 'কুমারখালী', 'খোকসা', 'মিরপুর', 'দৌলতপুর', 'ভেড়ামারা'];
        break;

      case 'মাগুরা':
        upazilaList = ['শালিখা', 'শ্রীপুর', 'মাগুরা সদর', 'মহম্মদপুর'];
        break;

      case 'খুলনা':
        upazilaList = ['পাইকগাছা', 'ফুলতলা উপজেলা', 'দিঘলিয়া উপজেলা', 'রূপসা উপজেলা', 'তেরখাদা উপজেলা',
          'ডুমুরিয়া উপজেলা', 'বটিয়াঘাটা', 'দাকোপ উপজেলা', 'কয়রা উপজেলা'];
        break;

      case 'বাগেরহাট':
        upazilaList = ['ফকিরহাট', 'বাগেরহাট সদর', 'মোল্লাহাট', 'শরণখোলা', 'রামপাল', 'মোড়েলগঞ্জ',
          'কচুয়া', 'মোংলা', 'চিতলমারী'];
        break;

      case 'ঝিনাইদহ':
        upazilaList = ['ঝিনাইদহ সদর', 'শৈলকুপা', 'হরিণাকুন্ডু', 'কালীগঞ্জ', 'কোটচাঁদপুর', 'মহেশপুর'];
        break;

//    বরিশাল বিভাগ

      case 'ঝালকাঠি':
        upazilaList = ['ঝালকাঠি সদর', 'কাঠালিয়া', 'নলছিটি', 'রাজাপুর'];
        break;

      case 'পটুয়াখালী':
        upazilaList = ['বাউফল', 'পটুয়াখালী সদর', 'দুমকি', 'দশমিনা', 'কলাপাড়া', 'মির্জাগঞ্জ', 'গলাচিপা',
          'রাঙ্গাবালী'];
        break;

      case 'পিরোজপুর':
        upazilaList = ['পিরোজপুর সদর', 'নাজিরপুর', 'কাউখালী', 'ভান্ডারিয়া', 'মঠবাড়ীয়া', 'নেছারাবাদ',
          'ইন্দুরকানী'];
        break;

      case 'বরিশাল':
        upazilaList = ['বরিশাল সদর', 'বাকেরগঞ্জ', 'বাবুগঞ্জ', 'উজিরপুর ', 'বানারীপাড়া', 'গৌরনদী',
          'আগৈলঝাড়া', 'মেহেন্দিগঞ্জ', 'মুলাদী ', 'হিজলা'];
        break;

      case 'ভোলা':
        upazilaList = ['ভোলা সদর', 'বোরহান উদ্দিন', 'চরফ্যাশন', 'দৌলতখান', 'মনপুরা', 'তজুমদ্দিন',
          'লালমোহন'];
        break;

      case 'বরগুনা':
        upazilaList = ['আমতলী', 'বরগুনা সদর', 'বেতাগী উপজেলা', 'বামনা', 'পাথরঘাটা', 'তালতলি'];
        break;

//    সিলেট বিভাগ

      case 'সিলেট':
        upazilaList = ['বালাগঞ্জ', 'বিয়ানীবাজার', 'বিশ্বনাথ', 'কোম্পানীগঞ্জ', 'ফেঞ্চুগঞ্জ', 'গোলাপগঞ্জ',
          'গোয়াইনঘাট', 'জৈন্তাপুর', 'কানাইঘাট', 'সিলেট সদর', 'জকিগঞ্জ', 'দক্ষিণ সুরমা', 'ওসমানী'];
        break;

      case 'মৌলভীবাজার':
        upazilaList = ['বড়লেখা', 'কমলগঞ্জ', 'কুলাউড়া', 'মৌলভীবাজার সদর', 'রাজনগর', 'শ্রীমঙ্গল',
          'জুড়ী'];
        break;

      case 'হবিগঞ্জ':
        upazilaList = ['নবীগঞ্জ', 'বাহুবল', 'আজমিরীগঞ্জ', 'বানিয়াচং', 'লাখাই', 'চুনারুঘাট', 'হবিগঞ্জ সদর',
          'মাধবপুর উপজেলা', 'শায়েস্তাগঞ্জ'];
        break;

      case 'সুনামগঞ্জ':
        upazilaList = ['সুনামগঞ্জ সদর', 'দক্ষিণ সুনামগঞ্জ', 'বিশ্বম্ভরপুর', 'ছাতক', 'জগন্নাথপুর', 'দোয়ারাবাজার',
          'তাহিরপুর', 'ধর্মপাশা', 'জামালগঞ্জ', 'শাল্লা', 'দিরাই'];
        break;

//    ঢাকা বিভাগ

      case 'নরসিংদী':
        upazilaList = ['বেলাবো', 'মনোহরদী', 'নরসিংদী', 'পলাশ', 'রায়পুরা', 'শিবপুর'];
        break;

      case 'গাজীপুর':
        upazilaList = ['কালীগঞ্জ', 'কালিয়াকৈর', 'কাপাসিয়া', 'গাজীপুর সদর', 'শ্রীপুর'];
        break;

      case 'শরীয়তপুর':
        upazilaList = ['শরিয়তপুর সদর', 'নড়িয়া', 'জাজিরা', 'গোসাইরহাট', 'ভেদরগঞ্জ', 'ডামুড্যা'];
        break;

      case 'নারায়ণগঞ্জ':
        upazilaList = ['আড়াইহাজার উপজেলা', 'বন্দর উপজেলা', 'নারায়নগঞ্জ সদর', 'রূপগঞ্জ উপজেলা',
          'সোনারগাঁ উপজেলা'];
        break;

      case 'টাঙ্গাইল':
        upazilaList = ['বাসাইল', 'ভুয়াপুর', 'দেলদুয়ার', 'ঘাটাইল', 'গোপালপুর', 'মধুপুর', 'মির্জাপুর',
          'নাগরপুর', 'সখিপুর', 'টাঙ্গাইল সদর', 'কালিহাতী', 'ধনবাড়ী'];
        break;

      case 'কিশোরগঞ্জ':
        upazilaList = ['ইটনা', 'কটিয়াদী', 'ভৈরব', 'তাড়াইল', 'হোসেনপুর', 'পাকুন্দিয়া', 'কুলিয়ারচর',
          'কিশোরগঞ্জ সদর', 'করিমগঞ্জ', 'বাজিতপুর', 'অষ্টগ্রাম', 'মিঠামইন', 'নিকলী'];
        break;

      case 'মানিকগঞ্জ':
        upazilaList = ['হরিরামপুর', 'সাটুরিয়া', 'মানিকগঞ্জ সদর', 'ঘিওর', 'শিবালয়', 'দৌলতপুর', 'সিংগাইর'];
        break;

      case 'ঢাকা':
        upazilaList = ['সাভার', 'ধামরাই', 'কেরাণীগঞ্জ', 'নবাবগঞ্জ', 'দোহার'];
        break;

      case 'মুন্সিগঞ্জ':
        upazilaList = ['মুন্সিগঞ্জ সদর', 'শ্রীনগর', 'সিরাজদিখান', 'লৌহজং', 'গজারিয়া', 'টংগীবাড়ি'];
        break;

      case 'রাজবাড়ী':
        upazilaList = ['রাজবাড়ী সদর', 'গোয়ালন্দ', 'পাংশা', 'বালিয়াকান্দি', 'কালুখালী'];
        break;

      case 'মাদারীপুর':
        upazilaList = ['মাদারীপুর সদর', 'শিবচর', 'কালকিনি', 'রাজৈর'];
        break;

      case 'গোপালগঞ্জ':
        upazilaList = ['গোপালগঞ্জ সদর', 'কাশিয়ানী', 'টুংগীপাড়া', 'কোটালীপাড়া', 'মুকসুদপুর'];
        break;

      case 'ফরিদপুর':
        upazilaList = ['ফরিদপুর সদর', 'আলফাডাঙ্গা', 'বোয়ালমারী', 'সদরপুর', 'নগরকান্দা', 'ভাঙ্গা',
          'চরভদ্রাসন', 'মধুখালী', 'সালথা'];
        break;

//    রংপুর বিভাগ

      case 'পঞ্চগড়':
        upazilaList = ['পঞ্চগড়', 'দেবীগঞ্জ', 'বোদা', 'আটোয়ারী', 'তেতুলিয়া'];
        break;

      case 'দিনাজপুর':
        upazilaList = ['নবাবগঞ্জ', 'বীরগঞ্জ উপজেলা', 'ঘোড়াঘাট', 'বিরামপুর', 'পার্বতীপুর উপজেলা',
          'বোচাগঞ্জ উপজেলা', 'কাহারোল উপজেলা', 'ফুলবাড়ী উপজেলা', 'দিনাজপুর সদর',
          'হাকিমপুর উপজেলা', 'খানসামা', 'বিরল উপজেলা', 'চিরিরবন্দর উপজেলা'];
        break;

      case 'লালমনিরহাট':
        upazilaList = ['লালমনিরহাট সদর', 'কালীগঞ্জ', 'হাতীবান্ধা', 'পাটগ্রাম', 'আদিতমারী উপজেলা'];
        break;

      case 'নীলফামারী':
        upazilaList = ['সৈয়দপুর উপজেলা', 'ডোমার উপজেলা', 'ডিমলা', 'জলঢাকা', 'কিশোরগঞ্জ',
    'নীলফামারী সদর'];
        break;

      case 'গাইবান্ধা':
        upazilaList = ['সাদুল্লাপুর', 'গাইবান্ধা সদর', 'পলাশবাড়ী', 'সাঘাটা উপজেলা', 'গোবিন্দগঞ্জ উপজেলা', 'সুন্দরগঞ্জ', 'ফুলছড়ি'];
        break;

      case 'ঠাকুরগাঁও':
        upazilaList = ['ঠাকুরগাঁও সদর', 'পীরগঞ্জ উপজেলা', 'রাণীশংকৈল উপজেলা', 'হরিপুর উপজেলা',
          'বালিয়াডাঙ্গী উপজেলা'];
        break;

      case 'রংপুর':
        upazilaList = ['রংপুর সদর', 'গংগাচড়া', 'তারাগঞ্জ উপজেলা', 'বদরগঞ্জ উপজেলা', 'মিঠাপুকুর উপজেলা',
          'পীরগঞ্জ উপজেলা', 'কাউনিয়া উপজেলা', 'পীরগাছা উপজেলা'];
        break;

      case 'কুড়িগ্রাম':
        upazilaList = ['কুড়িগ্রাম সদর', 'নাগেশ্বরী', 'ভুরুঙ্গামারী', 'ফুলবাড়ী', 'রাজারহাট', 'উলিপুর',
          'চিলমারী', 'রৌমারী', 'চর রাজিবপুর'];
        break;

//    ময়মনসিংহ বিভাগ

      case 'শেরপুর':
        upazilaList = ['শেরপুর সদর', 'নালিতাবাড়ী উপজেলা', 'শ্রীবরদী উপজেলা', 'নকলা উপজেলা',
          'ঝিনাইগাতী উপজেলা'];
        break;

      case 'ময়মনসিংহ':
        upazilaList = ['ফুলবাড়ীয়া', 'ত্রিশাল', 'ভালুকা', 'মুক্তাগাছা', 'ময়মনসিংহ সদর', 'ধোবাউড়া',
          'ফুলপুর', 'হালুয়াঘাট', 'গৌরীপুর', 'গফরগাঁও', 'ঈশ্বরগঞ্জ', 'নান্দাইল', 'তারাকান্দা'];
        break;

      case 'জামালপুর':
        upazilaList = ['জামালপুর সদর', 'মেলান্দহ', 'ইসলামপুর', 'দেওয়ানগঞ্জ', 'সরিষাবাড়ী', 'মাদারগঞ্জ',
          'বকশীগঞ্জ'];
        break;

      case 'নেত্রকোণা':
        upazilaList = ['বারহাট্টা', 'দুর্গাপুর', 'কেন্দুয়া', 'আটপাড়া', 'মদন', 'খালিয়াজুরী', 'কলমাকান্দা',
          'মোহনগঞ্জ', 'পূর্বধলা', 'নেত্রকোণা সদর'];
        break;

      default:
        break;
    }
    return upazilaList;
  }

//  _____________________________________________________________________

//  all district list

  List<String> getBarisalDistrictListBn(){
    List<String> districtList = ['বরিশাল', 'ভোলা', 'বরগুনা', 'পিরোজপুর', 'পটুয়াখালি', 'ঝালকাঠি'];
    return districtList;
  }

  List<String> getChattogramDistrictListBn(){
    List<String> districtList = ['লক্ষ্মীপুর', 'রাঙ্গামাটি', 'ব্রাহ্মণবাড়িয়া', 'বান্দরবান', 'ফেনী',
      'নোয়াখালি', 'চাঁদপুর', 'চট্টগ্রাম', 'খাগড়াছড়ি', 'কুমিল্লা', 'কক্সবাজার'];
    return districtList;
  }

  List<String> getDhakaDistrictListBn(){
    List<String> districtList = ['শরিয়তপুর', 'রাজবাড়ি', 'মুন্সিগঞ্জ', 'মানিকগঞ্জ', 'মাদারিপুর',
      'ফরিদপুর', 'নারায়ণগঞ্জ', 'নরসিংদি', 'ঢাকা', 'টাঙ্গাইল', 'গোপালগঞ্জ', 'গাজীপুর', 'কিশোরগঞ্জ'];
    return districtList;
  }

  List<String> getKhulnaDistrictListBn(){
    List<String> districtList = ['সাতক্ষীরা', 'যশোর', 'মেহেরপুর', 'মাগুরা', 'বাগেরহাট',
      'নড়াইল', 'ঝিনাইদহ', 'চুয়াডাঙ্গা', 'খুলনা', 'কুষ্টিয়া'];
    return districtList;
  }

  List<String> getMymensinghDistrictListBn(){
    List<String> districtList = ['শেরপুর', 'ময়মনসিংহ', 'নেত্রকোনা', 'জামালপুর'];
    return districtList;
  }

  List<String> getRajshahiDistrictListBn(){
    List<String> districtList = ['সিরাজগঞ্জ', 'রাজশাহী', 'বগুড়া', 'পাবনা', 'নাটোর', 'নওগাঁ',
      'জয়পুরহাট', 'চাঁপাইনবাবগঞ্জ'];
    return districtList;
  }

  List<String> getRangpurDistrictListBn(){
    List<String> districtList = ['লালমনিরহাট', 'রংপুর', 'পঞ্চগড়', 'নীলফামারি', 'দিনাজপুর',
      'ঠাকুরগাঁও', 'গাইবান্ধা', 'কুড়িগ্রাম'];
    return districtList;
  }

  List<String> getSylhetDistrictListBn(){
    List<String> districtList = ['হবিগঞ্জ', 'সুনামগঞ্জ', 'সিলেট', 'মৌলভীবাজার'];
    return districtList;
  }

}