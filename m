Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BAAB0CC012
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 18:05:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390122AbfJDQFi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 12:05:38 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:42532 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390027AbfJDQFi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 12:05:38 -0400
Received: by mail-pf1-f193.google.com with SMTP id q12so4153664pff.9
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 09:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=G6wIL875XZuorF2ZOZc99He9fmBICo2vTYfV+CUzHL0=;
        b=lOuj9JiU977ulIU8HkqDBOBQQ89TzhSSv3/X40mTVvctu8QgNnMEIzSohNVLZHTw9V
         yi4CO3DHpQmGWba5f6J8A1SPWwbNg0vzxLlXPa1J4d0YZdy8fz9c6222HH1f/Urwv3DV
         UNrq8NVfMurgeOIegEddRk3k4OFNyZtxaCMX4L3voGeVS3AIC0U7cG4BA3y2LB2LatBW
         6NtnN4NrYC5YhFQ1qf30iUGq72FnmYVgm/jt0U/ZwAXV5aFOQiHzcBMCx1NWz8gSwJ6+
         9hRdIeQxlzIoepLgK22iFJj6lS0qDcqEBgpw3FURlwS7DPIRXKoIGpuN9Yn10L9nQ9r7
         R03g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=G6wIL875XZuorF2ZOZc99He9fmBICo2vTYfV+CUzHL0=;
        b=JEtWoCtB1gfJUDVg3I7gVQgXreTohMio1S3OvvgobPOXrTNx7kcGHrVWQB5rfY2lHs
         yRG6k0+QcjB+xflJzI2p9w0UnKr52sF/G6wh7j6x7850jw7YUcvbbZOH6b1A90B6DONa
         2sLORE75aII0gcn81J6XKjqRfuUH/eadizhduZTC7rvISz/2RN3U0CxDVb1FRzD0GbCT
         lT/epzv3pwZhIqclzz9PiCt5H8l1lrW8m/2xKaDC2QE5IvrM+m+MHh/i7nN41jHwWCu3
         83imfDs5rCb7LMn10+IMyE9hWbXY8O4JgRDpprX59sE5N6zy+Tr6We8AbnpvCStv9BtR
         brRw==
X-Gm-Message-State: APjAAAWn7ruTE6ntjZTSfFBjwIuv5HARDmnlwzy3xP3fJx9vxAS1I21O
        ZoMaeOUrebRRGrGBzUfsYEjJ
X-Google-Smtp-Source: APXvYqwEeenp3fnA43Qgkg6DKMInAhQDlL7l8FbjYMHEpk4Ij7IGN5Hqostll6TJ9guDv3Fr28fVSA==
X-Received: by 2002:a17:90a:e017:: with SMTP id u23mr2556438pjy.55.1570205137188;
        Fri, 04 Oct 2019 09:05:37 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:648a:e40a:3174:4ae1:69ba:aabb])
        by smtp.gmail.com with ESMTPSA id b5sm5402254pgb.68.2019.10.04.09.05.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2019 09:05:36 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     mchehab@kernel.org, robh+dt@kernel.org, sakari.ailus@iki.fi
Cc:     linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        c.barrett@framos.com, a.brela@framos.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v5 0/2] Add IMX290 CMOS image sensor support
Date:   Fri,  4 Oct 2019 21:35:23 +0530
Message-Id: <20191004160525.16716-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This patchset adds support for IMX290 CMOS image sensor from Sony.
Sensor can be programmed through I2C and 4-wire interface but the
current driver only supports I2C interface. Also, the sensor is
capable of outputting frames in following 3 interfaces:

* CMOS logic parallel SDR output
* Low voltage LVDS serial DDR output
* CSI-2 serial data output

But the current driver only supports CSI-2 output available from 4 lanes.
In the case of sensor resolution, driver only supports 1920x1080 and
1280x720 at mid data rate of 445.5 Mpbs.

The driver has been validated using Framos IMX290 module interfaced to
96Boards Dragonboard410c.

Thanks,
Mani

Changes in v5:

* Fixed issues reported by coccinelle
* Moved MAINTAINERS entry to bindings patch as suggested by Sakari

Changes in v4:

As per the review by Sakari:

* Squashed the MAINTAINERS changes with driver patch
* Some misc changes to the driver

Changes in v3:

As per the review by Sakari:

* Switched to pm runtime
* Used link-frequency property
* Removed useless read calls from buffered read function
* Some other misc changes to the driver and binding

Changes in v2:

* Added Reviewed-by tag from Rob for bindings patch

Manivannan Sadhasivam (2):
  dt-bindings: media: i2c: Add IMX290 CMOS sensor binding
  media: i2c: Add IMX290 CMOS image sensor driver

 .../devicetree/bindings/media/i2c/imx290.txt  |  57 ++
 MAINTAINERS                                   |   8 +
 drivers/media/i2c/Kconfig                     |  11 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/imx290.c                    | 881 ++++++++++++++++++
 5 files changed, 958 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/imx290.txt
 create mode 100644 drivers/media/i2c/imx290.c

-- 
2.17.1

