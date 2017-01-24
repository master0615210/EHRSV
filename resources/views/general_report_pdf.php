<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>EHR - Report</title>
    <style type="text/css">
        body {
            margin: 0px;
            padding: 0px;
            font-size: 17px;
            font-family: Arial, Helvetica, sans-serif;
            background-color: #fff;
            color: #000;
        }

        table {
            border-collapse: collapse;
            margin: 0px auto;
            border: 0px;
        }

        th, td {
            text-align: left;
            padding: 5px 10px;
        }


        tr {
            border-bottom: 1px solid #000;
        }

        tr:last-child {
            border: none;
        }

        h1, h2, h3, h4, h5, h6 {
            margin: 0;
        }

        a, a:focus, a:active, a:hover, a:visited, a:link {
            color: #fe5151;
            text-decoration: none;
        }

        .txt-style1 {
            font-size: 20px !important;
            color: #212121;
            line-height: 29px;
        }

        .text-center {
            text-align: center;
        }

        .text-right {
            text-align: right;
        }

        .report-data td, .report-data th {
            border: 1px solid #000;
            border-bottom: none;
        }

        .report-data tbody tr:last-child {
            border-bottom: 1px solid #000;
        }

        p {
            margin: 0;
        }
    </style>
</head>
<body>
    <div style="background: #fff;width: 715px;margin: 0 auto;">
        <table style="border-collapse: separate;width: 100%;box-sizing: border-box;padding: 20px;display: block;background-color: #464c61;">
            <tr>
                <td>
                    <h3 style="color: #fff;"><?php echo $title; ?></h3>
                </td>
            </tr>
        </table>

        <div style="background-color:#f9fafd;padding:20px;width:100%;box-sizing:border-box;">
            <p class="text-center" style="font-size: 15px;margin-bottom: 10px !important;"><?php echo $description; ?></p>
            <?php if(strlen($startDate)): ?><p class="text-right" style="font-size: 13px;">From: <?php echo $startDate; ?></p><?php endif; ?>
            <?php if(strlen($endDate)): ?><p class="text-right" style="font-size: 13px;">To: <?php echo $endDate; ?></p><?php endif; ?>

            <table class="report-data" style="width:100%;background-color:#fff;margin-top: 5px;margin-bottom: 5px; border: 1px solid #000;">
                <?php if ($data->header): ?>
                <thead>
                    <tr>
                <?php foreach($data->header as $value): ?>
                        <th><?php echo $value; ?></th>
                <?php endforeach; ?>
                    </tr>
                </thead>
                <?php endif; ?>

                <?php if ($data->new_data): ?>
                <tbody>
                <?php foreach($data->new_data as $row): ?>
                    <tr>
                <?php foreach($row as $col_value): ?>
                        <td><?php echo $col_value; ?></td>
                <?php endforeach; ?>
                    </tr>
                <?php endforeach; ?>
                </tbody>
                <?php endif; ?>
            </table>
        </div>
    </div>
</body>
</html>