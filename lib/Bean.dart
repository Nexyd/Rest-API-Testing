class Bean {
    List workItems;
    String errorCode;
    String errorMessage;

    Bean(
        List workitems, 
        String errorCode,
        String errorMessage
    ) {
        this.workItems = workitems;
        this.errorCode = errorCode;
        this.errorMessage = errorMessage;
    }

    Bean.fromJson(Map<String, dynamic> json) {
        workItems = json['workItems'];
        errorCode = json['errorCode'];
        errorMessage = json['errorMessage'];
    }

    Map<String, dynamic> toJson() => {
        'workItems': workItems,
        'errorCode': errorCode,
        'errorMessage': errorMessage
    };
}