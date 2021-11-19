Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01B034576EA
	for <lists+devicetree@lfdr.de>; Fri, 19 Nov 2021 20:15:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231342AbhKSTSQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Nov 2021 14:18:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229675AbhKSTSQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Nov 2021 14:18:16 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0975C061574
        for <devicetree@vger.kernel.org>; Fri, 19 Nov 2021 11:15:13 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id y26so47623010lfa.11
        for <devicetree@vger.kernel.org>; Fri, 19 Nov 2021 11:15:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DorX6uh/2l16TStrOTRtdT5VbZ8ppu8SEpAlwh1V2bI=;
        b=SiPfe5H+3K+8kbywZFv+xafW62qQS4Fy4Efo6s4ID0U4KR4VM6eAeC6702KlS9nrYv
         VfyhNOA0yk1ciR5UNXCgxV3ML72CdzZxEAfr44KNuZTFGw6dEX52GTx8MwTxjd1Y4ivP
         hHeMoiYRQVYAaeSNJSxnTjluqWd8iWLemErrUOxbhBRgiY9bo81Ax4Hp3dgGf16a3jcJ
         VpUyd/gkA0rGhCr+3t5YUiQSGu7dKNTPZGdUyxeAJtjRPo0vSwedH+IQAP1WTnD5gC48
         99cdcL3WTbadGma1JEZJOLswFkf+CcApN3dS3L8kbMFf7aEkeofZYoDW0XZ0sbWs5puH
         c+Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DorX6uh/2l16TStrOTRtdT5VbZ8ppu8SEpAlwh1V2bI=;
        b=ZplE6WRimk5T96gLAYwn2fJdhcy7HVT7oDz5VK3r76A9Ehd5fr3R8/s4Gzmo0t5Gr9
         SgOca2dplt1hl8zUlb/Vmq64FXXzmNNRhVLIEQWKXsMx3wtFZ4n1vI9HzZmSWQkA9Rvx
         fe4qIgx9DN/1xqx94BImkfInmkvEqmTZzibjhPL43O/WpVHzN4viK8iQtP3aKaYxRFlB
         mXG5F83FeX1hZ892/X9howqwIfzozS88TFAlyo2Hnc3VUiE3Tha9b1gibz7x36rIcoQn
         DCTb4JWlLEol/b3/NA/h4apOUqsgHAxeml7eOHq9tYFrjIwMGVifFU5upcwbH6s0C6bb
         j6Wg==
X-Gm-Message-State: AOAM531ECR4dyzWLzGO1QbTbAB2eKYNzSo1LFLkd7Opu1I+Z3HtCfQg5
        AI8oMACyBFWzBZ/1cS7s+VKyEg==
X-Google-Smtp-Source: ABdhPJzh5508nh7ogd3E8pp2Dz/HxK4JjlQje/W7XPqQvO4Ui340PBzLVo5OmTfvotce1OQAc8CnvQ==
X-Received: by 2002:a05:6512:36c9:: with SMTP id e9mr35288685lfs.87.1637349312040;
        Fri, 19 Nov 2021 11:15:12 -0800 (PST)
Received: from boger-laptop.lan (81.5.99.121.dhcp.mipt-telecom.ru. [81.5.99.121])
        by smtp.gmail.com with ESMTPSA id d4sm67676lfg.153.2021.11.19.11.15.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Nov 2021 11:15:11 -0800 (PST)
From:   Evgeny Boger <boger@wirenboard.com>
To:     Chen-Yu Tsai <wens@csie.org>, linux-sunxi@lists.linux.dev,
        Maxime Ripard <mripard@kernel.org>
Cc:     Evgeny Boger <boger@wirenboard.com>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] iio: adc: sun4i-gpadc-iio: no temp sensor on R40
Date:   Fri, 19 Nov 2021 22:14:54 +0300
Message-Id: <20211119191456.510435-2-boger@wirenboard.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211119191456.510435-1-boger@wirenboard.com>
References: <20211119191456.510435-1-boger@wirenboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

R40 SoC has touchscreen controller also serving as general-purpose ADC.
The hardware is very similar to A31, except that R40 has separate
calibrated thermal sensor IP (handled by sun8i_thermal).

Despite the temperature sensor in the RTP is never mentioned in
the R40 family user manuals, it appears to be working. However,
it's not very useful as it lacks calibration data and there is another
fully functioning temperature sensor anyway.

This patch disables the temperature sensor in RTP/GPADC IP on R40.

The reason for disabling the temperature sensor is that the IP
needs to be switched back and forth between RTP and GPADC modes for
temperature measurements. Not only this introduces delays, but it also
disturbs external circuitry by injecting current into ADC inputs.

Signed-off-by: Evgeny Boger <boger@wirenboard.com>
---
 drivers/iio/adc/sun4i-gpadc-iio.c | 32 +++++++++++++++++++++++--------
 drivers/mfd/sun4i-gpadc.c         | 17 ++++++++++++++++
 2 files changed, 41 insertions(+), 8 deletions(-)

diff --git a/drivers/iio/adc/sun4i-gpadc-iio.c b/drivers/iio/adc/sun4i-gpadc-iio.c
index 2d393a4dfff6..e63a45c092ab 100644
--- a/drivers/iio/adc/sun4i-gpadc-iio.c
+++ b/drivers/iio/adc/sun4i-gpadc-iio.c
@@ -53,6 +53,7 @@ struct gpadc_data {
 	unsigned int	tp_adc_select;
 	unsigned int	(*adc_chan_select)(unsigned int chan);
 	unsigned int	adc_chan_mask;
+	bool            has_temp_sensor;
 };
 
 static const struct gpadc_data sun4i_gpadc_data = {
@@ -62,6 +63,7 @@ static const struct gpadc_data sun4i_gpadc_data = {
 	.tp_adc_select = SUN4I_GPADC_CTRL1_TP_ADC_SELECT,
 	.adc_chan_select = &sun4i_gpadc_chan_select,
 	.adc_chan_mask = SUN4I_GPADC_CTRL1_ADC_CHAN_MASK,
+	.has_temp_sensor = true,
 };
 
 static const struct gpadc_data sun5i_gpadc_data = {
@@ -71,6 +73,7 @@ static const struct gpadc_data sun5i_gpadc_data = {
 	.tp_adc_select = SUN4I_GPADC_CTRL1_TP_ADC_SELECT,
 	.adc_chan_select = &sun4i_gpadc_chan_select,
 	.adc_chan_mask = SUN4I_GPADC_CTRL1_ADC_CHAN_MASK,
+	.has_temp_sensor = true,
 };
 
 static const struct gpadc_data sun6i_gpadc_data = {
@@ -80,12 +83,24 @@ static const struct gpadc_data sun6i_gpadc_data = {
 	.tp_adc_select = SUN6I_GPADC_CTRL1_TP_ADC_SELECT,
 	.adc_chan_select = &sun6i_gpadc_chan_select,
 	.adc_chan_mask = SUN6I_GPADC_CTRL1_ADC_CHAN_MASK,
+	.has_temp_sensor = true,
+};
+
+static const struct gpadc_data sun8i_r40_gpadc_data = {
+	.temp_offset = -1623,
+	.temp_scale = 167,
+	.tp_mode_en = SUN6I_GPADC_CTRL1_TP_MODE_EN,
+	.tp_adc_select = SUN6I_GPADC_CTRL1_TP_ADC_SELECT,
+	.adc_chan_select = &sun6i_gpadc_chan_select,
+	.adc_chan_mask = SUN6I_GPADC_CTRL1_ADC_CHAN_MASK,
+	.has_temp_sensor = false,
 };
 
 static const struct gpadc_data sun8i_a33_gpadc_data = {
 	.temp_offset = -1662,
 	.temp_scale = 162,
 	.tp_mode_en = SUN8I_GPADC_CTRL1_CHOP_TEMP_EN,
+	.has_temp_sensor = true,
 };
 
 struct sun4i_gpadc_iio {
@@ -499,7 +514,7 @@ static int sun4i_gpadc_probe_dt(struct platform_device *pdev,
 	void __iomem *base;
 	int ret;
 
-	info->data = of_device_get_match_data(&pdev->dev);
+	info->data = (struct gpadc_data *)of_device_get_match_data(&pdev->dev);
 	if (!info->data)
 		return -ENODEV;
 
@@ -519,7 +534,7 @@ static int sun4i_gpadc_probe_dt(struct platform_device *pdev,
 		return ret;
 	}
 
-	if (IS_ENABLED(CONFIG_THERMAL_OF))
+	if (IS_ENABLED(CONFIG_THERMAL_OF) && info->data->has_temp_sensor)
 		info->sensor_device = &pdev->dev;
 
 	return 0;
@@ -552,7 +567,7 @@ static int sun4i_gpadc_probe_mfd(struct platform_device *pdev,
 	 * that choice to the user.
 	 */
 
-	if (IS_ENABLED(CONFIG_THERMAL_OF)) {
+	if (IS_ENABLED(CONFIG_THERMAL_OF) && info->data->has_temp_sensor) {
 		/*
 		 * This driver is a child of an MFD which has a node in the DT
 		 * but not its children, because of DT backward compatibility
@@ -575,7 +590,7 @@ static int sun4i_gpadc_probe_mfd(struct platform_device *pdev,
 		indio_dev->channels = sun4i_gpadc_channels_no_temp;
 	}
 
-	if (IS_ENABLED(CONFIG_THERMAL_OF)) {
+	if (IS_ENABLED(CONFIG_THERMAL_OF) && info->data->has_temp_sensor) {
 		ret = sun4i_irq_init(pdev, "TEMP_DATA_PENDING",
 				     sun4i_gpadc_temp_data_irq_handler,
 				     "temp_data", &info->temp_data_irq,
@@ -590,7 +605,7 @@ static int sun4i_gpadc_probe_mfd(struct platform_device *pdev,
 	if (ret < 0)
 		return ret;
 
-	if (IS_ENABLED(CONFIG_THERMAL_OF)) {
+	if (IS_ENABLED(CONFIG_THERMAL_OF) && info->data->has_temp_sensor) {
 		ret = iio_map_array_register(indio_dev, sun4i_gpadc_hwmon_maps);
 		if (ret < 0) {
 			dev_err(&pdev->dev,
@@ -636,7 +651,7 @@ static int sun4i_gpadc_probe(struct platform_device *pdev)
 	pm_runtime_set_suspended(&pdev->dev);
 	pm_runtime_enable(&pdev->dev);
 
-	if (IS_ENABLED(CONFIG_THERMAL_OF)) {
+	if (IS_ENABLED(CONFIG_THERMAL_OF) && info->data->has_temp_sensor) {
 		info->tzd = thermal_zone_of_sensor_register(info->sensor_device,
 							    0, info,
 							    &sun4i_ts_tz_ops);
@@ -661,7 +676,7 @@ static int sun4i_gpadc_probe(struct platform_device *pdev)
 	return 0;
 
 err_map:
-	if (!info->no_irq && IS_ENABLED(CONFIG_THERMAL_OF))
+	if (!info->no_irq && IS_ENABLED(CONFIG_THERMAL_OF) && info->data->has_temp_sensor)
 		iio_map_array_unregister(indio_dev);
 
 	pm_runtime_put(&pdev->dev);
@@ -678,7 +693,7 @@ static int sun4i_gpadc_remove(struct platform_device *pdev)
 	pm_runtime_put(&pdev->dev);
 	pm_runtime_disable(&pdev->dev);
 
-	if (!IS_ENABLED(CONFIG_THERMAL_OF))
+	if (!IS_ENABLED(CONFIG_THERMAL_OF) || !info->data->has_temp_sensor)
 		return 0;
 
 	thermal_zone_of_sensor_unregister(info->sensor_device, info->tzd);
@@ -693,6 +708,7 @@ static const struct platform_device_id sun4i_gpadc_id[] = {
 	{ "sun4i-a10-gpadc-iio", (kernel_ulong_t)&sun4i_gpadc_data },
 	{ "sun5i-a13-gpadc-iio", (kernel_ulong_t)&sun5i_gpadc_data },
 	{ "sun6i-a31-gpadc-iio", (kernel_ulong_t)&sun6i_gpadc_data },
+	{ "sun8i-r40-gpadc-iio", (kernel_ulong_t)&sun8i_r40_gpadc_data },
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(platform, sun4i_gpadc_id);
diff --git a/drivers/mfd/sun4i-gpadc.c b/drivers/mfd/sun4i-gpadc.c
index cfe14d9bf6dc..293acad52e5a 100644
--- a/drivers/mfd/sun4i-gpadc.c
+++ b/drivers/mfd/sun4i-gpadc.c
@@ -17,6 +17,7 @@
 #define ARCH_SUN4I_A10 0
 #define ARCH_SUN5I_A13 1
 #define ARCH_SUN6I_A31 2
+#define ARCH_SUN8I_R40 3
 
 static const struct resource adc_resources[] = {
 	DEFINE_RES_IRQ_NAMED(SUN4I_GPADC_IRQ_FIFO_DATA, "FIFO_DATA_PENDING"),
@@ -69,6 +70,15 @@ static struct mfd_cell sun6i_gpadc_cells[] = {
 	{ .name = "iio_hwmon" },
 };
 
+static struct mfd_cell sun8i_r40_gpadc_cells[] = {
+	{
+		.name	= "sun8i-r40-gpadc-iio",
+		.resources = adc_resources,
+		.num_resources = ARRAY_SIZE(adc_resources),
+	},
+	{ .name = "iio_hwmon" },
+};
+
 static const struct regmap_config sun4i_gpadc_regmap_config = {
 	.reg_bits = 32,
 	.val_bits = 32,
@@ -86,6 +96,9 @@ static const struct of_device_id sun4i_gpadc_of_match[] = {
 	}, {
 		.compatible = "allwinner,sun6i-a31-ts",
 		.data = (void *)ARCH_SUN6I_A31,
+	}, {
+		.compatible = "allwinner,sun8i-r40-ts",
+		.data = (void *)ARCH_SUN8I_R40,
 	}, { /* sentinel */ }
 };
 
@@ -117,6 +130,10 @@ static int sun4i_gpadc_probe(struct platform_device *pdev)
 		cells = sun6i_gpadc_cells;
 		size = ARRAY_SIZE(sun6i_gpadc_cells);
 		break;
+	case ARCH_SUN8I_R40:
+		cells = sun8i_r40_gpadc_cells;
+		size = ARRAY_SIZE(sun8i_r40_gpadc_cells);
+		break;
 	default:
 		return -EINVAL;
 	}
-- 
2.25.1

