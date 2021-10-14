Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DD2742DAF2
	for <lists+devicetree@lfdr.de>; Thu, 14 Oct 2021 15:57:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231559AbhJNN7Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Oct 2021 09:59:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231636AbhJNN7Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Oct 2021 09:59:24 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74CA0C061765
        for <devicetree@vger.kernel.org>; Thu, 14 Oct 2021 06:57:15 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id y3so19905957wrl.1
        for <devicetree@vger.kernel.org>; Thu, 14 Oct 2021 06:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AD9oqEQRrt+K7PF8CXPWRak3iEsR+fAEIvT2MdmSXYg=;
        b=TfoGK/YO6N+ITiDgcTK73gZE3NycgEqVa42Qf+1UO19RkHZTAwACZo/Cmjcmyp6DC+
         jjOEmmUrU6AS2a+z6PLo+veVAOpA8ug9q/KSPIy+V+It3Ql3VPEcN1CES0d1MSR/alzy
         zTRJ5zDFqAL+v0ysrZxWiCOo7ps5tOpGeX6sWN4lgwSaWd+hoPiVPer5X6BpT8sqS1Y9
         WoZ1Rbs65CYx2T5s5OYWvBlIaVl0r9BIOV8NAdYIlRnCMxOUIbfskfDg4EXOwAYBvCa8
         34G71isUqFGMmYn3xDD+2dw342v5dqFtt+bbhU2WP2g0HPZ8mA8iIqW8OUb3oiKKsiEG
         eLFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AD9oqEQRrt+K7PF8CXPWRak3iEsR+fAEIvT2MdmSXYg=;
        b=7lfXoxO+IzxjlrMPsQ1SvtE4IcMmxWJXpRo33tadlarosCDNpJV4SZ+A/SqzkTR+4F
         I6ycTogARoo9vlIQSdh3Xh4yXuzTywPsaDTH8D1ZzzBlyyTIgDoCOPxIIpjujQl6mjj5
         L8kk1VAygeySwkY5hQJocdZdzrw7RHxbagwwzzVWeAAXlsZWzkLEy64jXdqYnHkfUoIZ
         xOpW/M4WXmGaIPIVHjuHJQCHqr1ZARD31497NT0RvQfn2Dz0Hay5yQDH0AYCyF6AMDET
         EUhixg75OnMdMmxp+STwww0UDamVi9ODjESfi91g1jQo0/G6Ef/9t8SBvycKmUjVK1jy
         69Vg==
X-Gm-Message-State: AOAM533jExk+RGdAVP0AZkVNPtsvaZI1aeeUov5xDevU2vZt+tOomb7T
        wdtONRxsB1KuFOP4e1qGyRHIsQ==
X-Google-Smtp-Source: ABdhPJxf6LFxs3+QRVjtPhFm8mbj6cscqF3nefyMxTfWqwVufhx+YS+YovqZvQSFJ2KDY/Mwv1LV9g==
X-Received: by 2002:a5d:4ac4:: with SMTP id y4mr6830961wrs.190.1634219834060;
        Thu, 14 Oct 2021 06:57:14 -0700 (PDT)
Received: from blmsp.lan ([2a02:2454:3e6:c900::97e])
        by smtp.gmail.com with ESMTPSA id d1sm2596480wrr.72.2021.10.14.06.57.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Oct 2021 06:57:13 -0700 (PDT)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, fparent@baylibre.com,
        khilman@baylibre.com, Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH 3/3] thermal: mediatek: add MT8365 thermal driver support
Date:   Thu, 14 Oct 2021 15:56:36 +0200
Message-Id: <20211014135636.3644166-4-msp@baylibre.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211014135636.3644166-1-msp@baylibre.com>
References: <20211014135636.3644166-1-msp@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabien Parent <fparent@baylibre.com>

mt8365 is similar to the other SoCs supported by the driver. It has only
one bank and 3 sensors that can be multiplexed.

Additionally the buffer has to be enabled and connected to AUXADC
similar to the V2 version but at a different register offset. That's why
I added three new configuration values to define the register, mask and
bits to be set to be able to use it for both V2 and mt8365.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
[Added apmixed control register logic]
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 drivers/thermal/mtk_thermal.c | 91 ++++++++++++++++++++++++++++++++---
 1 file changed, 85 insertions(+), 6 deletions(-)

diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
index 93ee043d70da..7a75ae8231f2 100644
--- a/drivers/thermal/mtk_thermal.c
+++ b/drivers/thermal/mtk_thermal.c
@@ -31,6 +31,7 @@
 #define AUXADC_CON2_V		0x010
 #define AUXADC_DATA(channel)	(0x14 + (channel) * 4)
 
+#define APMIXED_SYS_TS_CON0	0x600
 #define APMIXED_SYS_TS_CON1	0x604
 
 /* Thermal Controller Registers */
@@ -245,6 +246,17 @@ enum mtk_thermal_version {
 /* The calibration coefficient of sensor  */
 #define MT8183_CALIBRATION	153
 
+/* MT8365 */
+#define MT8365_TEMP_AUXADC_CHANNEL 11
+#define MT8365_CALIBRATION 164
+#define MT8365_NUM_CONTROLLER 1
+#define MT8365_NUM_BANKS 1
+#define MT8365_NUM_SENSORS 3
+#define MT8365_NUM_SENSORS_PER_ZONE 3
+#define MT8365_TS1 0
+#define MT8365_TS2 1
+#define MT8365_TS3 2
+
 struct mtk_thermal;
 
 struct thermal_bank_cfg {
@@ -271,6 +283,9 @@ struct mtk_thermal_data {
 	bool need_switch_bank;
 	struct thermal_bank_cfg bank_data[MAX_NUM_ZONES];
 	enum mtk_thermal_version version;
+	u32 apmixed_buffer_ctl_reg;
+	u32 apmixed_buffer_ctl_mask;
+	u32 apmixed_buffer_ctl_set;
 };
 
 struct mtk_thermal {
@@ -386,6 +401,24 @@ static const int mt7622_mux_values[MT7622_NUM_SENSORS] = { 0, };
 static const int mt7622_vts_index[MT7622_NUM_SENSORS] = { VTS1 };
 static const int mt7622_tc_offset[MT7622_NUM_CONTROLLER] = { 0x0, };
 
+/* MT8365 thermal sensor data */
+static const int mt8365_bank_data[MT8365_NUM_SENSORS] = {
+	MT8365_TS1, MT8365_TS2, MT8365_TS3
+};
+
+static const int mt8365_msr[MT8365_NUM_SENSORS_PER_ZONE] = {
+	TEMP_MSR0, TEMP_MSR1, TEMP_MSR2
+};
+
+static const int mt8365_adcpnp[MT8365_NUM_SENSORS_PER_ZONE] = {
+	TEMP_ADCPNP0, TEMP_ADCPNP1, TEMP_ADCPNP2
+};
+
+static const int mt8365_mux_values[MT8365_NUM_SENSORS] = { 0, 1, 2 };
+static const int mt8365_tc_offset[MT8365_NUM_CONTROLLER] = { 0 };
+
+static const int mt8365_vts_index[MT8365_NUM_SENSORS] = { VTS1, VTS2, VTS3 };
+
 /*
  * The MT8173 thermal controller has four banks. Each bank can read up to
  * four temperature sensors simultaneously. The MT8173 has a total of 5
@@ -460,6 +493,40 @@ static const struct mtk_thermal_data mt2701_thermal_data = {
 	.version = MTK_THERMAL_V1,
 };
 
+/*
+ * The MT8365 thermal controller has one bank, which can read up to
+ * four temperature sensors simultaneously. The MT8365 has a total of 3
+ * temperature sensors.
+ *
+ * The thermal core only gets the maximum temperature of this one bank,
+ * so the bank concept wouldn't be necessary here. However, the SVS (Smart
+ * Voltage Scaling) unit makes its decisions based on the same bank
+ * data.
+ */
+static const struct mtk_thermal_data mt8365_thermal_data = {
+	.auxadc_channel = MT8365_TEMP_AUXADC_CHANNEL,
+	.num_banks = MT8365_NUM_BANKS,
+	.num_sensors = MT8365_NUM_SENSORS,
+	.vts_index = mt8365_vts_index,
+	.cali_val = MT8365_CALIBRATION,
+	.num_controller = MT8365_NUM_CONTROLLER,
+	.controller_offset = mt8365_tc_offset,
+	.need_switch_bank = false,
+	.bank_data = {
+		{
+			.num_sensors = MT8365_NUM_SENSORS,
+			.sensors = mt8365_bank_data
+		},
+	},
+	.msr = mt8365_msr,
+	.adcpnp = mt8365_adcpnp,
+	.sensor_mux_values = mt8365_mux_values,
+	.version = MTK_THERMAL_V1,
+	.apmixed_buffer_ctl_reg = APMIXED_SYS_TS_CON0,
+	.apmixed_buffer_ctl_mask = ~(u32)GENMASK(29, 28),
+	.apmixed_buffer_ctl_set = 0,
+};
+
 /*
  * The MT2712 thermal controller has one bank, which can read up to
  * four temperature sensors simultaneously. The MT2712 has a total of 4
@@ -514,6 +581,9 @@ static const struct mtk_thermal_data mt7622_thermal_data = {
 	.adcpnp = mt7622_adcpnp,
 	.sensor_mux_values = mt7622_mux_values,
 	.version = MTK_THERMAL_V2,
+	.apmixed_buffer_ctl_reg = APMIXED_SYS_TS_CON1,
+	.apmixed_buffer_ctl_mask = ~0x37,
+	.apmixed_buffer_ctl_set = 0x1,
 };
 
 /*
@@ -958,19 +1028,27 @@ static const struct of_device_id mtk_thermal_of_match[] = {
 	{
 		.compatible = "mediatek,mt8183-thermal",
 		.data = (void *)&mt8183_thermal_data,
+	},
+	{
+		.compatible = "mediatek,mt8365-thermal",
+		.data = (void *)&mt8365_thermal_data,
 	}, {
 	},
 };
 MODULE_DEVICE_TABLE(of, mtk_thermal_of_match);
 
-static void mtk_thermal_turn_on_buffer(void __iomem *apmixed_base)
+static void mtk_thermal_turn_on_buffer(struct mtk_thermal *mt,
+				       void __iomem *apmixed_base)
 {
 	int tmp;
 
-	tmp = readl(apmixed_base + APMIXED_SYS_TS_CON1);
-	tmp &= ~(0x37);
-	tmp |= 0x1;
-	writel(tmp, apmixed_base + APMIXED_SYS_TS_CON1);
+	if (!mt->conf->apmixed_buffer_ctl_reg)
+		return;
+
+	tmp = readl(apmixed_base + mt->conf->apmixed_buffer_ctl_reg);
+	tmp &= mt->conf->apmixed_buffer_ctl_mask;
+	tmp |= mt->conf->apmixed_buffer_ctl_set;
+	writel(tmp, apmixed_base + mt->conf->apmixed_buffer_ctl_reg);
 	udelay(200);
 }
 
@@ -1070,8 +1148,9 @@ static int mtk_thermal_probe(struct platform_device *pdev)
 		goto err_disable_clk_auxadc;
 	}
 
+	mtk_thermal_turn_on_buffer(mt, apmixed_base);
+
 	if (mt->conf->version == MTK_THERMAL_V2) {
-		mtk_thermal_turn_on_buffer(apmixed_base);
 		mtk_thermal_release_periodic_ts(mt, auxadc_base);
 	}
 
-- 
2.33.0

