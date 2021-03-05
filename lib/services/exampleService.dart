// Example of Seperation into a Service
// This could be HTTP Requests, Data Access etc.
class ExampleService {
  Map<String, String> dataContentList = new Map<String, String>();

  containsKey(key) {
    return dataContentList.containsKey(key);
  }

  get(key) {
    if (dataContentList.containsKey(key)) {
      return this.dataContentList[key];
    }

    return null;
  }

  add(key, data) {
    this.dataContentList[key] = data;
  }
}
