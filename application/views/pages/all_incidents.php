<div class="container">
    <div class="row mb-2">
        <div class="col">
            <a class="btn btn-success" href="http://localhost/incident_mgmt/index.php/Incident/new_incident/" role="button">Add New Incident</a>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
        <?php if(isset($incidents)) {?>
            <table class="table table-bordered table-hover">
                <thead class="table-success">
                <tr>
                    <th style="width: 10%" scope="col">Sr.no</th>
                    <th style="width: 15%" scope="col">Date</th>
                    <th style="width: 15%" scope="col">Incident Type</th>
                    <th style="width: 60%" scope="col">Description</th>
                </tr>
                </thead>
                <tbody>
                <?php
                foreach($incidents as $item) { ?>
                <tr>
                    <th scope="row"><?php echo $item->ID; ?></th>
                    <td><?php echo $item->date; ?></td>
                    <td><?php echo $item->type; ?></td>
                    <td class="text-justify"><?php echo $item->description; ?></td>
                </tr>
                <?php } ?>
                </tbody>
            </table>
        <?php } else {?>
            <div>No record(s) found.</div>
        <?php } ?>
        <?php foreach($links as $link) {?>
            <?php echo $link; ?>
        <?php } ?>
        </div>
    </div>
</div>