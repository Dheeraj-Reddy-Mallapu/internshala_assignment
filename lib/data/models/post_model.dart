class Post {
  int id;
  String title;
  String employmentType;
  ApplicationStatusMessage applicationStatusMessage;
  dynamic jobTitle;
  bool workFromHome;
  String segment;
  dynamic segmentLabelValue;
  dynamic internshipTypeLabelValue;
  List<String> jobSegments;
  String companyName;
  String companyUrl;
  bool isPremium;
  bool isPremiumInternship;
  String employerName;
  String companyLogo;
  String type;
  String url;
  int isInternchallenge;
  bool isExternal;
  bool isActive;
  DateTime expiresAt;
  String closedAt;
  String profileName;
  bool partTime;
  String startDate;
  String duration;
  Stipend stipend;
  dynamic salary;
  dynamic jobExperience;
  String experience;
  String postedOn;
  int postedOnDateTime;
  String applicationDeadline;
  String expiringIn;
  String postedByLabel;
  String postedByLabelType;
  List<String> locationNames;
  List<Location> locations;
  DateTime startDateComparisonFormat;
  DateTime startDate1;
  DateTime startDate2;
  bool isPpo;
  bool isPpoSalaryDisclosed;
  dynamic ppoSalary;
  dynamic ppoSalary2;
  String? ppoLabelValue;
  bool toShowExtraLabel;
  String extraLabelValue;
  bool isExtraLabelBlack;
  List<dynamic> campaignNames;
  String campaignName;
  bool toShowInSearch;
  String campaignUrl;
  dynamic campaignStartDateTime;
  dynamic campaignLaunchDateTime;
  dynamic campaignEarlyAccessStartDateTime;
  dynamic campaignEndDateTime;
  List<Label> labels;
  String labelsApp;
  List<String> labelsAppInCard;
  bool isCovidWfhSelected;
  bool toShowCardMessage;
  String message;
  bool isApplicationCappingEnabled;
  String applicationCappingMessage;
  List<dynamic> overrideMetaDetails;
  bool eligibleForEasyApply;
  bool eligibleForB2BApplyNow;
  bool toShowB2BLabel;
  bool isInternationalJob;
  bool toShowCoverLetter;
  String? officeDays;

  Post({
    required this.id,
    required this.title,
    required this.employmentType,
    required this.applicationStatusMessage,
    required this.jobTitle,
    required this.workFromHome,
    required this.segment,
    required this.segmentLabelValue,
    required this.internshipTypeLabelValue,
    required this.jobSegments,
    required this.companyName,
    required this.companyUrl,
    required this.isPremium,
    required this.isPremiumInternship,
    required this.employerName,
    required this.companyLogo,
    required this.type,
    required this.url,
    required this.isInternchallenge,
    required this.isExternal,
    required this.isActive,
    required this.expiresAt,
    required this.closedAt,
    required this.profileName,
    required this.partTime,
    required this.startDate,
    required this.duration,
    required this.stipend,
    required this.salary,
    required this.jobExperience,
    required this.experience,
    required this.postedOn,
    required this.postedOnDateTime,
    required this.applicationDeadline,
    required this.expiringIn,
    required this.postedByLabel,
    required this.postedByLabelType,
    required this.locationNames,
    required this.locations,
    required this.startDateComparisonFormat,
    required this.startDate1,
    required this.startDate2,
    required this.isPpo,
    required this.isPpoSalaryDisclosed,
    required this.ppoSalary,
    required this.ppoSalary2,
    required this.ppoLabelValue,
    required this.toShowExtraLabel,
    required this.extraLabelValue,
    required this.isExtraLabelBlack,
    required this.campaignNames,
    required this.campaignName,
    required this.toShowInSearch,
    required this.campaignUrl,
    required this.campaignStartDateTime,
    required this.campaignLaunchDateTime,
    required this.campaignEarlyAccessStartDateTime,
    required this.campaignEndDateTime,
    required this.labels,
    required this.labelsApp,
    required this.labelsAppInCard,
    required this.isCovidWfhSelected,
    required this.toShowCardMessage,
    required this.message,
    required this.isApplicationCappingEnabled,
    required this.applicationCappingMessage,
    required this.overrideMetaDetails,
    required this.eligibleForEasyApply,
    required this.eligibleForB2BApplyNow,
    required this.toShowB2BLabel,
    required this.isInternationalJob,
    required this.toShowCoverLetter,
    required this.officeDays,
  });

  factory Post.fromMap(Map<String, dynamic> json) => Post(
        id: json["id"],
        title: json["title"],
        employmentType: json["employment_type"],
        applicationStatusMessage: ApplicationStatusMessage.fromMap(
            json["application_status_message"]),
        jobTitle: json["job_title"],
        workFromHome: json["work_from_home"],
        segment: json["segment"],
        segmentLabelValue: json["segment_label_value"],
        internshipTypeLabelValue: json["internship_type_label_value"],
        jobSegments: List<String>.from(json["job_segments"].map((x) => x)),
        companyName: json["company_name"],
        companyUrl: json["company_url"],
        isPremium: json["is_premium"],
        isPremiumInternship: json["is_premium_internship"],
        employerName: json["employer_name"],
        companyLogo: json["company_logo"],
        type: json["type"],
        url: json["url"],
        isInternchallenge: json["is_internchallenge"],
        isExternal: json["is_external"],
        isActive: json["is_active"],
        expiresAt: DateTime.parse(json["expires_at"]),
        closedAt: json["closed_at"],
        profileName: json["profile_name"],
        partTime: json["part_time"],
        startDate: json["start_date"],
        duration: json["duration"],
        stipend: Stipend.fromMap(json["stipend"]),
        salary: json["salary"],
        jobExperience: json["job_experience"],
        experience: json["experience"],
        postedOn: json["posted_on"],
        postedOnDateTime: json["postedOnDateTime"],
        applicationDeadline: json["application_deadline"],
        expiringIn: json["expiring_in"],
        postedByLabel: json["posted_by_label"],
        postedByLabelType: json["posted_by_label_type"],
        locationNames: List<String>.from(json["location_names"].map((x) => x)),
        locations: List<Location>.from(
            json["locations"].map((x) => Location.fromMap(x))),
        startDateComparisonFormat:
            DateTime.parse(json["start_date_comparison_format"]),
        startDate1: DateTime.parse(json["start_date1"]),
        startDate2: DateTime.parse(json["start_date2"]),
        isPpo: json["is_ppo"],
        isPpoSalaryDisclosed: json["is_ppo_salary_disclosed"],
        ppoSalary: json["ppo_salary"],
        ppoSalary2: json["ppo_salary2"],
        ppoLabelValue: json["ppo_label_value"],
        toShowExtraLabel: json["to_show_extra_label"],
        extraLabelValue: json["extra_label_value"],
        isExtraLabelBlack: json["is_extra_label_black"],
        campaignNames: List<dynamic>.from(json["campaign_names"].map((x) => x)),
        campaignName: json["campaign_name"],
        toShowInSearch: json["to_show_in_search"],
        campaignUrl: json["campaign_url"],
        campaignStartDateTime: json["campaign_start_date_time"],
        campaignLaunchDateTime: json["campaign_launch_date_time"],
        campaignEarlyAccessStartDateTime:
            json["campaign_early_access_start_date_time"],
        campaignEndDateTime: json["campaign_end_date_time"],
        labels: List<Label>.from(json["labels"].map((x) => Label.fromMap(x))),
        labelsApp: json["labels_app"],
        labelsAppInCard:
            List<String>.from(json["labels_app_in_card"].map((x) => x)),
        isCovidWfhSelected: json["is_covid_wfh_selected"],
        toShowCardMessage: json["to_show_card_message"],
        message: json["message"],
        isApplicationCappingEnabled: json["is_application_capping_enabled"],
        applicationCappingMessage: json["application_capping_message"],
        overrideMetaDetails:
            List<dynamic>.from(json["override_meta_details"].map((x) => x)),
        eligibleForEasyApply: json["eligible_for_easy_apply"],
        eligibleForB2BApplyNow: json["eligible_for_b2b_apply_now"],
        toShowB2BLabel: json["to_show_b2b_label"],
        isInternationalJob: json["is_international_job"],
        toShowCoverLetter: json["to_show_cover_letter"],
        officeDays: json["office_days"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "employment_type": employmentType,
        "application_status_message": applicationStatusMessage.toMap(),
        "job_title": jobTitle,
        "work_from_home": workFromHome,
        "segment": segment,
        "segment_label_value": segmentLabelValue,
        "internship_type_label_value": internshipTypeLabelValue,
        "job_segments": List<dynamic>.from(jobSegments.map((x) => x)),
        "company_name": companyName,
        "company_url": companyUrl,
        "is_premium": isPremium,
        "is_premium_internship": isPremiumInternship,
        "employer_name": employerName,
        "company_logo": companyLogo,
        "type": type,
        "url": url,
        "is_internchallenge": isInternchallenge,
        "is_external": isExternal,
        "is_active": isActive,
        "expires_at":
            "${expiresAt.year.toString().padLeft(4, '0')}-${expiresAt.month.toString().padLeft(2, '0')}-${expiresAt.day.toString().padLeft(2, '0')}",
        "closed_at": closedAt,
        "profile_name": profileName,
        "part_time": partTime,
        "start_date": startDate,
        "duration": duration,
        "stipend": stipend.toMap(),
        "salary": salary,
        "job_experience": jobExperience,
        "experience": experience,
        "posted_on": postedOn,
        "postedOnDateTime": postedOnDateTime,
        "application_deadline": applicationDeadline,
        "expiring_in": expiringIn,
        "posted_by_label": postedByLabel,
        "posted_by_label_type": postedByLabelType,
        "location_names": List<dynamic>.from(locationNames.map((x) => x)),
        "locations": List<dynamic>.from(locations.map((x) => x.toMap())),
        "start_date_comparison_format":
            "${startDateComparisonFormat.year.toString().padLeft(4, '0')}-${startDateComparisonFormat.month.toString().padLeft(2, '0')}-${startDateComparisonFormat.day.toString().padLeft(2, '0')}",
        "start_date1":
            "${startDate1.year.toString().padLeft(4, '0')}-${startDate1.month.toString().padLeft(2, '0')}-${startDate1.day.toString().padLeft(2, '0')}",
        "start_date2":
            "${startDate2.year.toString().padLeft(4, '0')}-${startDate2.month.toString().padLeft(2, '0')}-${startDate2.day.toString().padLeft(2, '0')}",
        "is_ppo": isPpo,
        "is_ppo_salary_disclosed": isPpoSalaryDisclosed,
        "ppo_salary": ppoSalary,
        "ppo_salary2": ppoSalary2,
        "ppo_label_value": ppoLabelValue,
        "to_show_extra_label": toShowExtraLabel,
        "extra_label_value": extraLabelValue,
        "is_extra_label_black": isExtraLabelBlack,
        "campaign_names": List<dynamic>.from(campaignNames.map((x) => x)),
        "campaign_name": campaignName,
        "to_show_in_search": toShowInSearch,
        "campaign_url": campaignUrl,
        "campaign_start_date_time": campaignStartDateTime,
        "campaign_launch_date_time": campaignLaunchDateTime,
        "campaign_early_access_start_date_time":
            campaignEarlyAccessStartDateTime,
        "campaign_end_date_time": campaignEndDateTime,
        "labels": List<dynamic>.from(labels.map((x) => x.toMap())),
        "labels_app": labelsApp,
        "labels_app_in_card": List<dynamic>.from(labelsAppInCard.map((x) => x)),
        "is_covid_wfh_selected": isCovidWfhSelected,
        "to_show_card_message": toShowCardMessage,
        "message": message,
        "is_application_capping_enabled": isApplicationCappingEnabled,
        "application_capping_message": applicationCappingMessage,
        "override_meta_details":
            List<dynamic>.from(overrideMetaDetails.map((x) => x)),
        "eligible_for_easy_apply": eligibleForEasyApply,
        "eligible_for_b2b_apply_now": eligibleForB2BApplyNow,
        "to_show_b2b_label": toShowB2BLabel,
        "is_international_job": isInternationalJob,
        "to_show_cover_letter": toShowCoverLetter,
        "office_days": officeDays,
      };
}

class ApplicationStatusMessage {
  bool toShow;
  String message;
  String type;

  ApplicationStatusMessage({
    required this.toShow,
    required this.message,
    required this.type,
  });

  factory ApplicationStatusMessage.fromMap(Map<String, dynamic> json) =>
      ApplicationStatusMessage(
        toShow: json["to_show"],
        message: json["message"],
        type: json["type"],
      );

  Map<String, dynamic> toMap() => {
        "to_show": toShow,
        "message": message,
        "type": type,
      };
}

class Label {
  List<String> labelValue;
  List<String> labelMobile;
  List<String> labelApp;
  List<String> labelsAppInCard;

  Label({
    required this.labelValue,
    required this.labelMobile,
    required this.labelApp,
    required this.labelsAppInCard,
  });

  factory Label.fromMap(Map<String, dynamic> json) => Label(
        labelValue: List<String>.from(json["label_value"].map((x) => x)),
        labelMobile: List<String>.from(json["label_mobile"].map((x) => x)),
        labelApp: List<String>.from(json["label_app"].map((x) => x)),
        labelsAppInCard:
            List<String>.from(json["labels_app_in_card"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "label_value": List<dynamic>.from(labelValue.map((x) => x)),
        "label_mobile": List<dynamic>.from(labelMobile.map((x) => x)),
        "label_app": List<dynamic>.from(labelApp.map((x) => x)),
        "labels_app_in_card": List<dynamic>.from(labelsAppInCard.map((x) => x)),
      };
}

class Location {
  String string;
  String link;
  String country;
  String? region;
  String locationName;

  Location({
    required this.string,
    required this.link,
    required this.country,
    required this.region,
    required this.locationName,
  });

  factory Location.fromMap(Map<String, dynamic> json) => Location(
        string: json["string"],
        link: json["link"],
        country: json["country"],
        region: json["region"],
        locationName: json["locationName"],
      );

  Map<String, dynamic> toMap() => {
        "string": string,
        "link": link,
        "country": country,
        "region": region,
        "locationName": locationName,
      };
}

class Stipend {
  String salary;
  dynamic tooltip;
  int salaryValue1;
  dynamic salaryValue2;
  String salaryType;
  String currency;
  String scale;
  bool largeStipendText;

  Stipend({
    required this.salary,
    required this.tooltip,
    required this.salaryValue1,
    required this.salaryValue2,
    required this.salaryType,
    required this.currency,
    required this.scale,
    required this.largeStipendText,
  });

  factory Stipend.fromMap(Map<String, dynamic> json) => Stipend(
        salary: json["salary"],
        tooltip: json["tooltip"],
        salaryValue1: json["salaryValue1"],
        salaryValue2: json["salaryValue2"],
        salaryType: json["salaryType"],
        currency: json["currency"],
        scale: json["scale"],
        largeStipendText: json["large_stipend_text"],
      );

  Map<String, dynamic> toMap() => {
        "salary": salary,
        "tooltip": tooltip,
        "salaryValue1": salaryValue1,
        "salaryValue2": salaryValue2,
        "salaryType": salaryType,
        "currency": currency,
        "scale": scale,
        "large_stipend_text": largeStipendText,
      };
}
