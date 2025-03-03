<!DOCTYPE html>
<html lang="he">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>הקלטה והמרה לטקסט</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 15px 20px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 8px;
        }
        button:hover {
            background-color: #45a049;
        }
        #output {
            margin-top: 20px;
            font-size: 20px;
            border: 1px solid #ccc;
            padding: 10px;
            min-height: 50px;
            width: 80%;
            display: inline-block;
        }
    </style>
</head>
<body>
    <h2>מערכת הקלטה והמרה לטקסט</h2>
    
    <!-- כפתור שמפעיל את ההקלטה באפליקציה -->
    <button onclick="startRecording()">🔴 התחל הקלטה</button>

    <!-- תיבת טקסט להצגת התוצאה -->
    <div id="output">כאן יופיע הטקסט המתומלל...</div>

    <script>
        function startRecording() {
            if (window.Android) {
                window.Android.startRecording(); // קריאה לפונקציה ב-Java של האפליקציה
            } else {
                alert("החיבור לאפליקציה לא זמין.");
            }
        }

        function updateText(text) {
            document.getElementById("output").innerText = text;
        }
    </script>
</body>
</html>
