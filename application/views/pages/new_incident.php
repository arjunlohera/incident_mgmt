<div class="container">
    <div class="row mb-2">
        <div class="col">
            <a class="btn btn-success" href="http://localhost/incident_mgmt/index.php/Incident/show_incidents/" role="button">View all Incidents</a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 col-lg-4">
        
            <div class="text-danger"><?php echo validation_errors(); ?></div>
            <?php $attributes = array('id' => 'myform');?>
            <?php echo form_open('Incident/new_incident', $attributes); ?>
            <div class="form-group">
                <label for="type">Incident Type:</label>
                <select class="form-control" id="type" style="height:2.8em" name="type">
                <option value="">--select--</option>
                    <option value="Accident">Accident</option>
                    <option value="Traffic Violation">Traffic Violation</option>
                    <option value="Others">Others</option>
                </select>
            </div>
            <div class="form-group form_input">
            <label for="incident_date">Date:</label>
                <div class='input-group date' id='incident_date'>
                    <input type='text' name="incident_date" class="form-control" style="height:2.8em" placeholder="MM/DD/YYYY"  />
                    <div class="input-group-addon">
                        <span class="input-group-text fas fa-calendar-alt fa-2x"></span>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea class="form-control" id="description" rows="8" maxlength="1000" name="description" placeholder="Type description here..." ></textarea>
            </div>
            <button type="submit" class="btn btn-primary btn-lg">Submit</button>
            </form>
        </div>
    </div>
</div>