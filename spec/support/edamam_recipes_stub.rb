def edamam_recipes_api_request
  stub_request(:get, "https://api.edamam.com/api/recipes/v2?app_id=db174bf3&app_key=90597395fbf45646a5f2d9f54d5c8de1&q=chicken&type=public").to_return(
        status: 200,
        body: lambda do |request|
                api_response.to_json
              end, 
        headers: {})
end

def api_response
  {
    from: 1,
    to: 20,
    count: 10000,
    _links: {},
    hits: [
      {
         recipe: {
            uri: "http://www.edamam.com/ontologies/edamam.owl#recipe_b79327d05b8e5b838ad6cfd9576b30b6",
            label: "Chicken Vesuvio",
            image: "https://edamam-product-images.s3.amazonaws.com/web-img/e42/e42f9119813e890af34c259785ae1cfb.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEHYaCXVzLWVhc3QtMSJIMEYCIQDokO58jVewq3VNjcAWvT77C99q6feJNAjWqSLnfeD5gQIhAO5iCM2lUOMkHky5Agf61EtZQ1KuExAm9bk4wPuBqePvKtIECH4QABoMMTg3MDE3MTUwOTg2IgxEuRtnQ81Sv0rm8vgqrwRGpQbnztsJ0zIcxXtiToKkGNS90mX%2B4mHjaAY81Og5HQnvQZ08Jtv8fSof5pVLtzioNoRDKUbGRyhcy3hGlapC0NI5vITAfcH%2BRwv%2BhBPeK2eKOlJkQiTPWeiBY6fdxibvwMbs0wP0R7Hw8k8DLoVRQZV2WX%2B9orAQyckbriUZp7wCXNGjL6UdN90divbtxiYHlBdsYPWab7uU41fCazBbTZIr5pQWSb7hhRUKyeFikSkeQrZiKM4MqgwvL%2FylIb89EYefcDmJqcUXXAfW30qD4qRNmfXECBza8zf%2Fe9OxtYqZ2rKwggSyFmwAigjHN1wzNh9PTXQ7GI6eKP2KjEU%2Bxc02cpDcNqjHO0zOOhMYtCaqGCe7cRGfaupc4lWfEnQsF9HYCTi1ixqA5evK%2F1tQTUUqf8TbrJTT8R1wtoOah5RGBQyqe%2FJTP5X95zvRpYSWC%2B%2FOXrKfpigwA6ysUDzUnHunx8BJIUEtPWBEwFyfNaX%2FR1BTiWMSsp2n8fD6jwiruw9t7xFNwFeW5VIIjPA7sh3oslbH5wHkZYTn0dD2ERD%2BXgYh3Hz71lz0aHakA5tje%2F4PugOorMTYKHIbBo0crOBHwmJYvodL1rDmLhwX9G1RCSH43Q5OCRQZm27Mn%2FVWY4UTNiX8tqTgYRU2N18j5VTKzP8AjZ%2ByZ0yfdkCdfT%2Fc9dO%2BjYeq2LxOn2gMf%2Fy0ux7Jh8cmCloaggoRPL3xb5omrBWa1g8pElFclqYKMNjUnpUGOqgB83NAaMl8yFGDNkdQcluvjtvzS6APEKK%2FbWL1ibheCgVcX%2FJqw%2BVqkFqB%2FAUE36IhMWSs0FC6CqhnD%2FK2gRmKeQfdwXt1QELOi3cCAsfgHvnBiHn41raXIIS1sX%2F6N2AelZeooUKyuGGJDGaQWCQxhlPZ8hG1VCFF36NSdUU0sH9HYyV%2B6Ad907LZhCjh%2B5NKBERM6%2FGcYBGGNmTjg4P3PRD61G6ryyrV&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20220613T213315Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFF3RHQWHS%2F20220613%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=b3fe3ba4589ceb18341ea44c5637f5ca2674eb7f46b0f0aba4832c509e8a648a",
         },
         _links: {
            self: {
               href: "https://api.edamam.com/api/recipes/v2/b79327d05b8e5b838ad6cfd9576b30b6?type=public&app_id=db174bf3&app_key=90597395fbf45646a5f2d9f54d5c8de1",
               title: "Self"
            }
         }
      }
    ]
  }
end
