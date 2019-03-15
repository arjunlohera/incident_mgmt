<div class="container">
    <?php if(isset($error)){?>
        <div class="row">
        <p class="text-danger"><?php echo $error; ?></p>
    </div>
    <?php }?>
    <div class="row">
        <a class="btn btn-success mb-3" href="http://localhost/incident_mgmt/index.php/Incident/show_incidents/"
            role="button">View all Incidents</a>
    </div>
    <div class="row">
        <div class="text-danger"><?php echo validation_errors(); ?></div>
        <?php $attributes = array('id' => 'myform');?>
        <?php echo form_open('Incident/new_incident', $attributes); ?>
        <div class="form-row">
            <div class="form-group col-md-4">
                <label for="incident_type">Incident Type:</label>
                <select class="form-control" id="incident_type" style="height:2.8em" name="incident_type" required>
                    <option value="">--select--</option>
                    <option value="Accident">Accident</option>
                    <option value="Traffic Violation">Traffic Violation</option>
                    <option value="Others">Others</option>
                </select>
            </div>
            <div class="form-group col-md-4">
                <label for="datepicker_date">Date:</label>
                <div class='input-group date' id="datepicker_date">
                    <input type='text' id='incident_date' name="incident_date" class="form-control" style="height:2.8em"
                        placeholder="MM/DD/YYYY" required>
                        <!-- <span class="input-group-addon input-group-text fas fa-calendar-alt fa-2x"></span> -->
                    <div class="input-group-addon">
                        <span class="input-group-text fas fa-calendar-alt fa-2x"></span>
                    </div>
                </div>
            </div>

            <div class="form-group col-md-8">
                <label for="description">Description:</label>
                <textarea class="form-control" id="description" rows="5" maxlength="1000" name="description"
                    placeholder="Type description here..." required></textarea>
            </div>
            <div id="notice" class="col-md-6 font-weight-bold" style="color:green; display:none">
				<p>(Row inserted successfully.)</p>
            </div>
        </div>
        <button type="submit" class="btn btn-outline-success btn-lg col-md-4">Add</button>
        <button type="reset" class="btn btn-outline-warning btn-lg col-md-4">Clear</button>
        </form>
    </div>
    <hr />
    <div class="row mt-5">
        <div class="col-12">
        <h4>All Incidents:</h4>
            <table id="mytable" class="table table-bordered table-hover table-responsive">
                <thead class="table-success">
                    <tr>
                        <th style="width: 15%" scope="col">Date</th>
                        <th style="width: 15%" scope="col">Type</th>
                        <th style="width: 60%" scope="col">Description</th>
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
                        <td><button class="btn btn-outline-danger btn-sm delete_button"
                                id="<?php echo $item->ID;?>">Delete</button></td>
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
