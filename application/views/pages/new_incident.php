<div class="container">
    <div class="row justify-content-between">
        <div class="col-md-6 col-lg-4">
            <a class="btn btn-success mb-3" href="http://localhost/incident_mgmt/index.php/Incident/show_incidents/"
                role="button">View all Incidents</a>
            <div class="text-danger"><?php echo validation_errors(); ?></div>
            <?php $attributes = array('id' => 'myform');?>
            <?php echo form_open('Incident/new_incident', $attributes); ?>
            <div class="form-group">
                <label for="incident_type">Incident Type:</label>
                <select class="form-control" id="incident_type" style="height:2.8em" name="incident_type">
                    <option value="">--select--</option>
                    <option value="Accident">Accident</option>
                    <option value="Traffic Violation">Traffic Violation</option>
                    <option value="Others">Others</option>
                </select>
            </div>
            <div class="form-group form_input">
                <label for="incident_date">Date:</label>
                <div class='input-group date' id="datepicket_date">
                    <input type='text' id='incident_date' name="incident_date" class="form-control" style="height:2.8em"
                        placeholder="MM/DD/YYYY" />
                    <div class="input-group-addon">
                        <span class="input-group-text fas fa-calendar-alt fa-2x"></span>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea class="form-control" id="description" rows="8" maxlength="1000" name="description"
                    placeholder="Type description here..."></textarea>
            </div>
            <button type="submit" class="btn btn-outline-info btn-lg">Add</button>
            </form>
        </div>
        <div class="col-md-6 col-lg-7">
            <table class="table table-bordered table-hover">
                <thead class="table-success">
                    <tr>
                        <th style="width: 25%" scope="col">Date</th>
                        <th style="width: 15%" scope="col">Type</th>
                        <th style="width: 50%" scope="col">Description</th>
                        <th style="width: 10%" scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php if(isset($latest_incidents)) {
                    foreach($latest_incidents as $item) {
                    ?>
                    <tr>
                        <td><?php echo $item->date; ?></td>
                        <td><?php echo $item->type; ?></td>
                        <td class="text-justify"><?php echo $item->description; ?></td>
                        <td><button class="btn btn-outline-success btn-sm delete_button" id="<?php echo $item->ID;?>">Delete</button></td>
                    </tr>
                    <?php }
                     } else {
                        ?>
                    <div class="text-danger font-weight-bold">No record(s) found.</div>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
