<div class="container">
<!-- $_SERVER["PHP_SELF"] sends the submitted form data to the page itself, instead of jumping to 
    a different page. This way, the user will get error messages on the same page as the form.-->
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
        <h1>CUSTOMIZE YOUR SAFARI</h1>
        <div class="form-group row">
            <div class="form-inline">
                <label for="usr">First Name: </label>
                <input type="text" class="form-control" id="usr" name="first" required="required" />
            </div>
            <div class="form-inline">
                <label for="usr">Last Name: </label>
                <input type="text" class="form-control" id="usr" name="last" required="required" />
            </div>
            <div class="form-inline">
                <label for="usr">Phone No: </label>
                <input type="number" class="form-control" id="usr" name="phone" required="required" />
            </div>
        </div>
        <div class="form-group row">
            <div class="form-inline">
                <label for="mail">Email: </label>
                <input type="email" class="form-control" id="mail" name="email" />
            </div>
            <div class="form-inline">
                <label for="date">Date: </label>
                <input type="date" class="form-control" id="date" name="date" required="required" />
            </div>
            <div class="form-inline">
                <label for="town">City: </label>
                <input type="text" class="form-control" id="town" name="city" />
            </div>
        </div>
        <div class="form-inline">
            <label class="radio-inline"><input type="radio" name="time_day" value="morning" required="required">Morning </label>
            <label class="radio-inline"><input type="radio" name="time_day" value="evening" required="required">Evening</label>
        </div>
        <div class="form-group row">
            <div class="form-inline">
                <label for="days">Approx no of days</label>
                <input type="number" class="form-control" id="days" name="days" required="required" />
            </div>
            <div class="form-inline">
                <label for="nights">Approx no of Nights</label>
                <input type="number" class="form-control" id="nights" name="nights" required="required" />
            </div>
        </div>
        <div class="form-group-sm">
            <p><strong>Travelling with children?</strong></p>
            <label class="radio-inline"><input type="radio" name="option" value="yes">YES </label>
            <label class="radio-inline"><input type="radio" name="option" value="no">NO </label>
        </div>
        <div class="form-inline">
            <label for="num">IF YES HOW MANY?</label>
            <input type="number" class="form-control" id="num" name="children" />
        </div>
        <div class="form-group">
            <label for="comment">COMMENTS:</label>
            <textarea class="form-control" rows="5" id="comment" name="comment"></textarea>
        </div>
        <div class="form-inline">
            <input type="submit" />
            <input type="reset" />
        </div>
    </form>
</div>
</div>