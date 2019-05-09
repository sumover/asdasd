<html>
<body>
<h1>welcome to use price calculator!</h1>
<script language="JavaScript">


    function calculate() {
        var isHead = document.getElementById("isHead").checked,
            isDisabled = document.getElementById("isDisabled").checked,
            isForeigner = document.getElementById("isForeigner").checked;
        var weight = document.getElementById("weight").value;
        console.log(weight);
        console.log(String(isHead));
        console.log(String(isDisabled));
        console.log(String(isForeigner));

        if (weight < 30) {
            document.getElementById("price").value = 0;
            return 0;
        }
        var price = weight - 30;
        if (isHead)
            price *= 4;
        else price *= 6;
        if (isForeigner)
            price *= 2;
        if (isDisabled)
            price /= 2;
        document.getElementById("price").value = price;
    }
</script>
<form>
    <table>
        <caption>calculator</caption>
        <tr>
            <td>
                weight
            </td>
            <td>
                <input id="weight" name="weight" type="text"/>
            </td>
        </tr>
        <tr>
            <td>
                Is the first class?
            </td>
            <td>
                <input id="isHead" name="isHead" type="checkbox">
            </td>
        </tr>
        <tr>
            <td>Is foreigner?</td>
            <td>
                <input id="isForeigner" name="isForeigner" type="checkbox">
            </td>
        </tr>
        <tr>
            <td>
                Is disabled?
            </td>
            <td>
                <input id="isDisabled" name="isDisabled" type="checkbox">
            </td>
        </tr>
        <tr>
            <td>
                <input value="calculate!" type="button" onclick="calculate()">
            </td>
        </tr>
        <tr>
            <td>
                <h3>price:</h3>
                <input id="price" name="price" type="text">
            </td>
        </tr>
    </table>
</form>

</body>
</html>
