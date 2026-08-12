@IsTest
private class CandidateSyncQueueableTest {

    private class RecruitmentApiMock implements HttpCalloutMock {
        public HttpResponse respond(HttpRequest request) {

            HttpResponse response = new HttpResponse();

            response.setStatusCode(201);
            response.setStatus('Created');
            response.setHeader('Content-Type', 'application/json');

            response.setBody(
                '{"id":101,"studentId":"STU10001","name":"Ajay","branch":"IT","cgpa":8.6}'
            );

            return response;
        }
    }

    @IsTest
    static void testCandidateSyncQueueable() {

        Test.setMock(
            HttpCalloutMock.class,
            new RecruitmentApiMock()
        );

        Test.startTest();

        Id jobId = System.enqueueJob(
            new CandidateSyncQueueable(null)
        );

        Test.stopTest();

        System.assertNotEquals(
            null,
            jobId,
            'Queueable job should be created successfully'
        );
    }
}
