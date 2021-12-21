### Authentication

The FHIR REST API uses a JWT authentication. In order to use the endpoints from the REST API, you need to have access to an openIMIS account. Please contact the developers team for more information. 

Every request needs the Authorization HTTP header field:

`Authorization: Bearer <Token>`

The Token is obtained by making a POST request to the /api/login route.

If no valid headers are provided in the request, a `401 Unauthorized` status code will throw with no response HTTP body.

### Authorization 

The authorization in openIMIS is based on atomic authorities (create, update, read, delete, ...) and location. Authorities are grouped into roles that are attached to users. Locations are also attached to users. If you don't receive any results for a resource or you don't see results from other locations, it means the user either doesn't have the right authorities or doesn't have access to the locations.  