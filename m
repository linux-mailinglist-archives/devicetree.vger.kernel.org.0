Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B382A2C1EE4
	for <lists+devicetree@lfdr.de>; Tue, 24 Nov 2020 08:32:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729968AbgKXHam (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Nov 2020 02:30:42 -0500
Received: from mail.kernel.org ([198.145.29.99]:55218 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730050AbgKXHal (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 24 Nov 2020 02:30:41 -0500
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id D31832076B;
        Tue, 24 Nov 2020 07:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
        s=korg; t=1606203040;
        bh=RoJmMJGT7uEZrkuzR579tdRL3vaJJyI20UO+YG3pwoU=;
        h=Subject:To:From:Date:From;
        b=ivpRKy4wYRwFKunMPKuN92K5Ot58VZ8npLZIPxHPCbTjg5bjm0xRA/8VdDUUPsKS3
         /ZwmoauGiXgvHMcnkPVPZs51IMe3TudXHeNwX5iriUl/3vsvjFsFqvcw/fyesuagEq
         S2qv1OOAJY/5aAHxnqE6TCmhkrauyLfGrJNbFA/M=
Subject: patch "iio: sx9310: Set various settings from DT" added to staging-testing
To:     swboyd@chromium.org, Jonathan.Cameron@huawei.com,
        campello@chromium.org, devicetree@vger.kernel.org,
        dianders@chromium.org, evgreen@chromium.org, gwendal@chromium.org,
        lars@metafoo.de, pmeerw@pmeerw.net, robh+dt@kernel.org
From:   <gregkh@linuxfoundation.org>
Date:   Tue, 24 Nov 2020 08:31:11 +0100
Message-ID: <1606203071116118@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ANSI_X3.4-1968
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


This is a note to let you know that I've just added the patch titled

    iio: sx9310: Set various settings from DT

to my staging git tree which can be found at
    git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
in the staging-testing branch.

The patch will show up in the next release of the linux-next tree
(usually sometime within the next 24 hours during the week.)

The patch will be merged to the staging-next branch sometime soon,
after it passes testing, and the merge window is open.

If you have any questions about this process, please let me know.


From 5b19ca2c78a0838976064c0347e46a2c859b541d Mon Sep 17 00:00:00 2001
From: Stephen Boyd <swboyd@chromium.org>
Date: Tue, 6 Oct 2020 18:17:35 -0700
Subject: iio: sx9310: Set various settings from DT

These properties need to be set during driver probe. Parse any DT
properties and replace the default register settings with the ones
parsed from DT.

Signed-off-by: Stephen Boyd <swboyd@chromium.org>
Cc: Daniel Campello <campello@chromium.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>
Cc: Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: <devicetree@vger.kernel.org>
Cc: Douglas Anderson <dianders@chromium.org>
Cc: Gwendal Grignou <gwendal@chromium.org>
Cc: Evan Green <evgreen@chromium.org>
Link: https://lore.kernel.org/r/20201007011735.1346994-7-swboyd@chromium.org
Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
---
 drivers/iio/proximity/sx9310.c | 125 ++++++++++++++++++++++++++++++++-
 1 file changed, 124 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/proximity/sx9310.c b/drivers/iio/proximity/sx9310.c
index 1809940563b1..a2f820997afc 100644
--- a/drivers/iio/proximity/sx9310.c
+++ b/drivers/iio/proximity/sx9310.c
@@ -49,23 +49,42 @@
 #define   SX9310_REG_PROX_CTRL0_SCANPERIOD_15MS		0x01
 #define SX9310_REG_PROX_CTRL1				0x11
 #define SX9310_REG_PROX_CTRL2				0x12
+#define   SX9310_REG_PROX_CTRL2_COMBMODE_MASK		GENMASK(7, 6)
+#define   SX9310_REG_PROX_CTRL2_COMBMODE_CS0_CS1_CS2_CS3 (0x03 << 6)
 #define   SX9310_REG_PROX_CTRL2_COMBMODE_CS1_CS2	(0x02 << 6)
+#define   SX9310_REG_PROX_CTRL2_COMBMODE_CS0_CS1	(0x01 << 6)
+#define   SX9310_REG_PROX_CTRL2_COMBMODE_CS3		(0x00 << 6)
+#define   SX9310_REG_PROX_CTRL2_SHIELDEN_MASK		GENMASK(3, 2)
 #define   SX9310_REG_PROX_CTRL2_SHIELDEN_DYNAMIC	(0x01 << 2)
+#define   SX9310_REG_PROX_CTRL2_SHIELDEN_GROUND		(0x02 << 2)
 #define SX9310_REG_PROX_CTRL3				0x13
 #define   SX9310_REG_PROX_CTRL3_GAIN0_MASK		GENMASK(3, 2)
 #define   SX9310_REG_PROX_CTRL3_GAIN0_X8		(0x03 << 2)
 #define   SX9310_REG_PROX_CTRL3_GAIN12_MASK		GENMASK(1, 0)
 #define   SX9310_REG_PROX_CTRL3_GAIN12_X4		0x02
 #define SX9310_REG_PROX_CTRL4				0x14
+#define   SX9310_REG_PROX_CTRL4_RESOLUTION_MASK		GENMASK(2, 0)
 #define   SX9310_REG_PROX_CTRL4_RESOLUTION_FINEST	0x07
+#define   SX9310_REG_PROX_CTRL4_RESOLUTION_VERY_FINE	0x06
+#define   SX9310_REG_PROX_CTRL4_RESOLUTION_FINE		0x05
+#define   SX9310_REG_PROX_CTRL4_RESOLUTION_MEDIUM	0x04
+#define   SX9310_REG_PROX_CTRL4_RESOLUTION_MEDIUM_COARSE 0x03
+#define   SX9310_REG_PROX_CTRL4_RESOLUTION_COARSE	0x02
+#define   SX9310_REG_PROX_CTRL4_RESOLUTION_VERY_COARSE	0x01
+#define   SX9310_REG_PROX_CTRL4_RESOLUTION_COARSEST	0x00
 #define SX9310_REG_PROX_CTRL5				0x15
 #define   SX9310_REG_PROX_CTRL5_RANGE_SMALL		(0x03 << 6)
+#define   SX9310_REG_PROX_CTRL5_STARTUPSENS_MASK	GENMASK(3, 2)
 #define   SX9310_REG_PROX_CTRL5_STARTUPSENS_CS1		(0x01 << 2)
+#define   SX9310_REG_PROX_CTRL5_RAWFILT_MASK		GENMASK(1, 0)
+#define   SX9310_REG_PROX_CTRL5_RAWFILT_SHIFT		0
 #define   SX9310_REG_PROX_CTRL5_RAWFILT_1P25		0x02
 #define SX9310_REG_PROX_CTRL6				0x16
 #define   SX9310_REG_PROX_CTRL6_AVGTHRESH_DEFAULT	0x20
 #define SX9310_REG_PROX_CTRL7				0x17
 #define   SX9310_REG_PROX_CTRL7_AVGNEGFILT_2		(0x01 << 3)
+#define   SX9310_REG_PROX_CTRL7_AVGPOSFILT_MASK		GENMASK(2, 0)
+#define   SX9310_REG_PROX_CTRL7_AVGPOSFILT_SHIFT	0
 #define   SX9310_REG_PROX_CTRL7_AVGPOSFILT_512		0x05
 #define SX9310_REG_PROX_CTRL8				0x18
 #define   SX9310_REG_PROX_CTRL8_9_PTHRESH_MASK		GENMASK(7, 3)
@@ -1193,9 +1212,113 @@ static int sx9310_init_compensation(struct iio_dev *indio_dev)
 	return ret;
 }
 
+static const struct sx9310_reg_default *
+sx9310_get_default_reg(struct sx9310_data *data, int i,
+		       struct sx9310_reg_default *reg_def)
+{
+	int ret;
+	const struct device_node *np = data->client->dev.of_node;
+	u32 combined[SX9310_NUM_CHANNELS] = { 4, 4, 4, 4 };
+	unsigned long comb_mask = 0;
+	const char *res;
+	u32 start = 0, raw = 0, pos = 0;
+
+	memcpy(reg_def, &sx9310_default_regs[i], sizeof(*reg_def));
+	if (!np)
+		return reg_def;
+
+	switch (reg_def->reg) {
+	case SX9310_REG_PROX_CTRL2:
+		if (of_property_read_bool(np, "semtech,cs0-ground")) {
+			reg_def->def &= ~SX9310_REG_PROX_CTRL2_SHIELDEN_MASK;
+			reg_def->def |= SX9310_REG_PROX_CTRL2_SHIELDEN_GROUND;
+		}
+
+		reg_def->def &= ~SX9310_REG_PROX_CTRL2_COMBMODE_MASK;
+		of_property_read_u32_array(np, "semtech,combined-sensors",
+					   combined, ARRAY_SIZE(combined));
+		for (i = 0; i < ARRAY_SIZE(combined); i++) {
+			if (combined[i] <= SX9310_NUM_CHANNELS)
+				comb_mask |= BIT(combined[i]);
+		}
+
+		comb_mask &= 0xf;
+		if (comb_mask == (BIT(3) | BIT(2) | BIT(1) | BIT(0)))
+			reg_def->def |= SX9310_REG_PROX_CTRL2_COMBMODE_CS0_CS1_CS2_CS3;
+		else if (comb_mask == (BIT(1) | BIT(2)))
+			reg_def->def |= SX9310_REG_PROX_CTRL2_COMBMODE_CS1_CS2;
+		else if (comb_mask == (BIT(0) | BIT(1)))
+			reg_def->def |= SX9310_REG_PROX_CTRL2_COMBMODE_CS0_CS1;
+		else if (comb_mask == BIT(3))
+			reg_def->def |= SX9310_REG_PROX_CTRL2_COMBMODE_CS3;
+
+		break;
+	case SX9310_REG_PROX_CTRL4:
+		ret = of_property_read_string(np, "semtech,resolution", &res);
+		if (ret)
+			break;
+
+		reg_def->def &= ~SX9310_REG_PROX_CTRL4_RESOLUTION_MASK;
+		if (!strcmp(res, "coarsest"))
+			reg_def->def |= SX9310_REG_PROX_CTRL4_RESOLUTION_COARSEST;
+		else if (!strcmp(res, "very-coarse"))
+			reg_def->def |= SX9310_REG_PROX_CTRL4_RESOLUTION_VERY_COARSE;
+		else if (!strcmp(res, "coarse"))
+			reg_def->def |= SX9310_REG_PROX_CTRL4_RESOLUTION_COARSE;
+		else if (!strcmp(res, "medium-coarse"))
+			reg_def->def |= SX9310_REG_PROX_CTRL4_RESOLUTION_MEDIUM_COARSE;
+		else if (!strcmp(res, "medium"))
+			reg_def->def |= SX9310_REG_PROX_CTRL4_RESOLUTION_MEDIUM;
+		else if (!strcmp(res, "fine"))
+			reg_def->def |= SX9310_REG_PROX_CTRL4_RESOLUTION_FINE;
+		else if (!strcmp(res, "very-fine"))
+			reg_def->def |= SX9310_REG_PROX_CTRL4_RESOLUTION_VERY_FINE;
+		else if (!strcmp(res, "finest"))
+			reg_def->def |= SX9310_REG_PROX_CTRL4_RESOLUTION_FINEST;
+
+		break;
+	case SX9310_REG_PROX_CTRL5:
+		ret = of_property_read_u32(np, "semtech,startup-sensor", &start);
+		if (ret) {
+			start = FIELD_GET(SX9310_REG_PROX_CTRL5_STARTUPSENS_MASK,
+					  reg_def->def);
+		}
+
+		reg_def->def &= ~SX9310_REG_PROX_CTRL5_STARTUPSENS_MASK;
+		reg_def->def |= FIELD_PREP(SX9310_REG_PROX_CTRL5_STARTUPSENS_MASK,
+					   start);
+
+		ret = of_property_read_u32(np, "semtech,proxraw-strength", &raw);
+		if (ret) {
+			raw = FIELD_GET(SX9310_REG_PROX_CTRL5_RAWFILT_MASK,
+					reg_def->def);
+		} else {
+			raw = ilog2(raw);
+		}
+
+		reg_def->def &= ~SX9310_REG_PROX_CTRL5_RAWFILT_MASK;
+		reg_def->def |= FIELD_PREP(SX9310_REG_PROX_CTRL5_RAWFILT_MASK,
+					   raw);
+		break;
+	case SX9310_REG_PROX_CTRL7:
+		ret = of_property_read_u32(np, "semtech,avg-pos-strength", &pos);
+		if (ret)
+			break;
+
+		pos = min(max(ilog2(pos), 3), 10) - 3;
+		reg_def->def &= ~SX9310_REG_PROX_CTRL7_AVGPOSFILT_MASK;
+		reg_def->def |= FIELD_PREP(SX9310_REG_PROX_CTRL7_AVGPOSFILT_MASK,
+					   pos);
+		break;
+	}
+
+	return reg_def;
+}
+
 static int sx9310_init_device(struct iio_dev *indio_dev)
 {
 	struct sx9310_data *data = iio_priv(indio_dev);
+	struct sx9310_reg_default tmp;
 	const struct sx9310_reg_default *initval;
 	int ret;
 	unsigned int i, val;
@@ -1213,7 +1336,7 @@ static int sx9310_init_device(struct iio_dev *indio_dev)
 
 	/* Program some sane defaults. */
 	for (i = 0; i < ARRAY_SIZE(sx9310_default_regs); i++) {
-		initval = &sx9310_default_regs[i];
+		initval = sx9310_get_default_reg(data, i, &tmp);
 		ret = regmap_write(data->regmap, initval->reg, initval->def);
 		if (ret)
 			return ret;
-- 
2.29.2


