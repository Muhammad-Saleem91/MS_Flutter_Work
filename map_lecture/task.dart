void main()
{
    List <Map> StudentInfo = [
        {"id":"cs221113" , "Name" : "Muhammad Saleem" , "Marks" : 5},
        {"id":"cs221112" , "Name" : "Aarish" , "Marks" : 3},
        {"id":"cs222002" , "Name" : "Umair" , "Marks" : 2},
        {"id":"cs221140" , "Name" : "Darshan" , "Marks" : 1}
    
    
    
    ];

    print(StudentInfo[2]["Marks"]);

    List abc = [
        [3,5,6],
        {
            "hello" : {
                2: ["abc" ,2,3],
                1: {
                    "1" : 0,
                    1 : "0",
                },
            }
        },
        ["1"],
    ];

    print(abc[1]["hello"][1]["1"]);
}