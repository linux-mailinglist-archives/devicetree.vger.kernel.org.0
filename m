Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B887B2F00D3
	for <lists+devicetree@lfdr.de>; Sat,  9 Jan 2021 16:28:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726848AbhAIP1C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Jan 2021 10:27:02 -0500
Received: from mo4-p01-ob.smtp.rzone.de ([81.169.146.164]:34703 "EHLO
        mo4-p01-ob.smtp.rzone.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726522AbhAIP1B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Jan 2021 10:27:01 -0500
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXS7IYBkLahKxB5W6NRVg="
X-RZG-CLASS-ID: mo00
Received: from droid..
        by smtp.strato.de (RZmta 47.12.1 DYNA|AUTH)
        with ESMTPSA id R0a218x09FO6UP9
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
        Sat, 9 Jan 2021 16:24:06 +0100 (CET)
From:   Stephan Gerhold <stephan@gerhold.net>
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Rob Herring <robh+dt@kernel.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH v2 2/2] iio: magnetometer: bmc150: Add rudimentary regulator support
Date:   Sat,  9 Jan 2021 16:23:27 +0100
Message-Id: <20210109152327.512538-2-stephan@gerhold.net>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210109152327.512538-1-stephan@gerhold.net>
References: <20210109152327.512538-1-stephan@gerhold.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

BMC150 needs VDD and VDDIO regulators that might need to be explicitly
enabled. Add some rudimentary support to obtain and enable these
regulators during probe() and disable them during remove()
or on the error path.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
This is mostly copy-paste of
079c1c3f2082 ("iio: accel: bmc150-accel: Add rudimentary regulator support")
from Linus Walleij but for the BMC150 magnetometer driver.

Changes in v2: Picked up Reviewed-by:, split patch series from bmg160
---
 drivers/iio/magnetometer/bmc150_magn.c | 26 +++++++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/magnetometer/bmc150_magn.c b/drivers/iio/magnetometer/bmc150_magn.c
index fa09fcab620a..b2f3129e1b4f 100644
--- a/drivers/iio/magnetometer/bmc150_magn.c
+++ b/drivers/iio/magnetometer/bmc150_magn.c
@@ -25,6 +25,7 @@
 #include <linux/iio/trigger_consumer.h>
 #include <linux/iio/triggered_buffer.h>
 #include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
 
 #include "bmc150_magn.h"
 
@@ -135,6 +136,7 @@ struct bmc150_magn_data {
 	 */
 	struct mutex mutex;
 	struct regmap *regmap;
+	struct regulator_bulk_data regulators[2];
 	struct iio_mount_matrix orientation;
 	/* 4 x 32 bits for x, y z, 4 bytes align, 64 bits timestamp */
 	s32 buffer[6];
@@ -692,12 +694,24 @@ static int bmc150_magn_init(struct bmc150_magn_data *data)
 	int ret, chip_id;
 	struct bmc150_magn_preset preset;
 
+	ret = regulator_bulk_enable(ARRAY_SIZE(data->regulators),
+				    data->regulators);
+	if (ret < 0) {
+		dev_err(data->dev, "Failed to enable regulators: %d\n", ret);
+		return ret;
+	}
+	/*
+	 * 3ms power-on time according to datasheet, let's better
+	 * be safe than sorry and set this delay to 5ms.
+	 */
+	msleep(5);
+
 	ret = bmc150_magn_set_power_mode(data, BMC150_MAGN_POWER_MODE_SUSPEND,
 					 false);
 	if (ret < 0) {
 		dev_err(data->dev,
 			"Failed to bring up device from suspend mode\n");
-		return ret;
+		goto err_regulator_disable;
 	}
 
 	ret = regmap_read(data->regmap, BMC150_MAGN_REG_CHIP_ID, &chip_id);
@@ -752,6 +766,8 @@ static int bmc150_magn_init(struct bmc150_magn_data *data)
 
 err_poweroff:
 	bmc150_magn_set_power_mode(data, BMC150_MAGN_POWER_MODE_SUSPEND, true);
+err_regulator_disable:
+	regulator_bulk_disable(ARRAY_SIZE(data->regulators), data->regulators);
 	return ret;
 }
 
@@ -867,6 +883,13 @@ int bmc150_magn_probe(struct device *dev, struct regmap *regmap,
 	data->irq = irq;
 	data->dev = dev;
 
+	data->regulators[0].supply = "vdd";
+	data->regulators[1].supply = "vddio";
+	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(data->regulators),
+				      data->regulators);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to get regulators\n");
+
 	ret = iio_read_mount_matrix(dev, "mount-matrix",
 				&data->orientation);
 	if (ret)
@@ -984,6 +1007,7 @@ int bmc150_magn_remove(struct device *dev)
 	bmc150_magn_set_power_mode(data, BMC150_MAGN_POWER_MODE_SUSPEND, true);
 	mutex_unlock(&data->mutex);
 
+	regulator_bulk_disable(ARRAY_SIZE(data->regulators), data->regulators);
 	return 0;
 }
 EXPORT_SYMBOL(bmc150_magn_remove);
-- 
2.30.0

