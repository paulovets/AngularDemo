@RestResource(urlMapping='/angulardemo/attachment/*')
global without sharing class AngularDemoRestAttachment {

    @HttpGet
    global static List<Attachment> doGet() {
        String parentId = RestContext.request.params.get('parentId');
        return [SELECT Id, ParentId, Description, Name, IsPrivate, ContentType FROM Attachment WHERE ParentId =: parentId LIMIT 50000];
    }
  
    @HttpPost
    global static Attachment doPost() {
        String requestBody = RestContext.request.requestBody.toString();
        AttachmentWrapper wrapper = (AttachmentWrapper)JSON.deserialize(requestBody, AttachmentWrapper.class);

        Attachment attachment = new Attachment(
            Description = wrapper.Description,
            ParentId = wrapper.ParentId,
            Name = wrapper.Name,
            IsPrivate = wrapper.IsPrivate,
            ContentType = wrapper.ContentType,
            Body = EncodingUtil.base64Decode(wrapper.Body)
        );

        upsert attachment;

        return attachment;
    }

    @HttpDelete
    global static void doDelete() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String attachmentId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        delete [SELECT Id FROM Attachment WHERE Id = :attachmentId];
    }

    private class AttachmentWrapper {
        public String Description { get; set; }
        public String ParentId { get; set; }
        public String Name { get; set; }
        public String Body { get; set; }
        public Boolean IsPrivate { get; set; }
        public String ContentType { get; set; }
    }
}