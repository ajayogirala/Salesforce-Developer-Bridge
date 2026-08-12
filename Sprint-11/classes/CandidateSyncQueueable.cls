public class CandidateSyncQueueable
    implements Queueable, Database.AllowsCallouts {

    private Id applicationId;

    public CandidateSyncQueueable(Id applicationId) {
        this.applicationId = applicationId;
    }

    public void execute(QueueableContext context) {

        HttpRequest request = new HttpRequest();

        request.setEndpoint(
            'callout:Recruitment_API/posts'
        );

        request.setMethod('POST');

        request.setHeader(
            'Content-Type',
            'application/json'
        );

        request.setBody(
            '{"studentId":"STU10001","name":"Ajay","branch":"IT","cgpa":8.6}'
        );

        Http http = new Http();

        HttpResponse response = http.send(request);

        System.debug(
            'Status Code: ' + response.getStatusCode()
        );

        System.debug(
            'Response Body: ' + response.getBody()
        );
    }
}
