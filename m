Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 869E36CEC0B
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 16:45:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229884AbjC2Op3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 10:45:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230017AbjC2OpL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 10:45:11 -0400
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6629B6A7A
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 07:42:49 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id f17so11710963oiw.10
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 07:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680100968; x=1682692968;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W3EukDY738uK8t5sI5cTKcLQTkVH6nf7vkK4CY7nzUE=;
        b=pisLy7kY9tfNIZwT7ISNjGBM/EpA9AYZBs0Ra5pslb9fY4Ql3VD7Xe13SaBijeN8qX
         d6OFgbxdFPdayZhW3Lxm7rbSRphAvcz6VGN4LljIzIjBht1bLJM6JYPc0UwhDDBDQqYk
         vni5KPILwtSaE2WMaXGcEPgrnerxc/1iSo6iYvAxrI9KGCL3uVKTey6PD1v40CRNQiMH
         wy4IO15GietL/RDIJuqRtp4uLkEIbcrSun1KwBzBkzVldXbzFbUfegu7IKOFM2nsC/VC
         KDtDzundvG9UQMWSZ3Yl3SQPCQu2cOKI3uPCIrYBNzCIXEH0H93x+HEJk+OsPBx/B8vu
         KZJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680100968; x=1682692968;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W3EukDY738uK8t5sI5cTKcLQTkVH6nf7vkK4CY7nzUE=;
        b=Ae9eaJxra7cS3J9sGY+1XeW6gb54/rRvmgbJXNkGhpPzcWLOfD2l6nM8wx4woNxCUq
         jPXsHxLat8KMG+MQkbSzDzzgq5IPp7ZgrivmUT5ywwLG/vkforX5O/ZshV4A80OPK+Sf
         UEDqh+tbQj+DO3DH3hr5l0c5a0L3dauUY6s6GEuA1Uau+kNJZ5j9uk8vxLAlj592RP1+
         VQmW+UlYt/x6JfbujoMPTRrRtT3MYZT64sT1p4mse0ocj1gICBmaZB6Y3ZW7XXhykH4x
         stVmkbVBDqlyYKQjiZ/MObRAdVK3YOPAYONwzy5GgXUkbylLqNJBu0GqtBrwEGqqc+kc
         ha/Q==
X-Gm-Message-State: AO0yUKWDy37nIrn7YQyexvNP/1z9QPHSB9B/Cy9TON1dQUPL9OXP5G5x
        kxDEPranANoDBDmMGsEVvklZ5nNWZqwK5w==
X-Google-Smtp-Source: AK7set8HRWLhppj6CPT0xvYBSZaGn4LonJfEG8/9Usb9GwpaaDnvkpz/AbKxzQJ+Dl1TFiwqyYcQuw==
X-Received: by 2002:a05:6808:1981:b0:387:24cb:9e78 with SMTP id bj1-20020a056808198100b0038724cb9e78mr10657268oib.5.1680100968683;
        Wed, 29 Mar 2023 07:42:48 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:1c2d:271:d34:84ea])
        by smtp.gmail.com with ESMTPSA id v12-20020a4aad8c000000b0053b909a5229sm7223691oom.4.2023.03.29.07.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 07:42:48 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     neil.armstrong@linaro.org
Cc:     inki.dae@samsung.com, marex@denx.de, jagan@amarulasolutions.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/2] drm/exynos: Implement support for DSI clock and data lane polarity swap
Date:   Wed, 29 Mar 2023 11:41:55 -0300
Message-Id: <20230329144155.699196-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230329144155.699196-1-festevam@gmail.com>
References: <20230329144155.699196-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Marek Vasut <marex@denx.de>

Implement support for DSI clock and data lane DN/DP polarity swap by
means of decoding 'lane-polarities' DT property. The controller does
support DN/DP swap of clock lane and all data lanes, the controller
does not support polarity swap of individual data lane bundles, add
a check which verifies all data lanes have the same polarity.

This has been validated on an imx8mm board that actually has the MIPI DSI
clock lanes inverted.

Signed-off-by: Marek Vasut <marex@denx.de>
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 drivers/gpu/drm/bridge/samsung-dsim.c | 27 ++++++++++++++++++++++++++-
 include/drm/bridge/samsung-dsim.h     |  2 ++
 2 files changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/samsung-dsim.c b/drivers/gpu/drm/bridge/samsung-dsim.c
index e0a402a85787..5791148e2da2 100644
--- a/drivers/gpu/drm/bridge/samsung-dsim.c
+++ b/drivers/gpu/drm/bridge/samsung-dsim.c
@@ -183,6 +183,8 @@
 #define DSIM_AFC_CTL(x)			(((x) & 0x7) << 5)
 
 /* DSIM_PLLCTRL */
+#define DSIM_PLL_DPDNSWAP_CLK		(1 << 25)
+#define DSIM_PLL_DPDNSWAP_DAT		(1 << 24)
 #define DSIM_FREQ_BAND(x)		((x) << 24)
 #define DSIM_PLL_EN			BIT(23)
 #define DSIM_PLL_P(x, offset)		((x) << (offset))
@@ -622,6 +624,11 @@ static unsigned long samsung_dsim_set_pll(struct samsung_dsim *dsi,
 		reg |= DSIM_FREQ_BAND(band);
 	}
 
+	if (dsi->swap_dn_dp_clk)
+		reg |= DSIM_PLL_DPDNSWAP_CLK;
+	if (dsi->swap_dn_dp_data)
+		reg |= DSIM_PLL_DPDNSWAP_DAT;
+
 	samsung_dsim_write(dsi, DSIM_PLLCTRL_REG, reg);
 
 	timeout = 1000;
@@ -1696,7 +1703,9 @@ static int samsung_dsim_parse_dt(struct samsung_dsim *dsi)
 {
 	struct device *dev = dsi->dev;
 	struct device_node *node = dev->of_node;
-	int ret;
+	u32 lane_polarities[5] = { 0 };
+	struct device_node *endpoint;
+	int i, nr_lanes, ret;
 
 	ret = samsung_dsim_of_read_u32(node, "samsung,pll-clock-frequency",
 				       &dsi->pll_clk_rate);
@@ -1713,6 +1722,22 @@ static int samsung_dsim_parse_dt(struct samsung_dsim *dsi)
 	if (ret < 0)
 		return ret;
 
+	endpoint = of_graph_get_endpoint_by_regs(node, 1, -1);
+	nr_lanes = of_property_count_u32_elems(endpoint, "data-lanes");
+	if (nr_lanes > 0 && nr_lanes <= 4) {
+		/* Polarity 0 is clock lane, 1..4 are data lanes. */
+		of_property_read_u32_array(endpoint, "lane-polarities",
+					   lane_polarities, nr_lanes + 1);
+		for (i = 1; i <= nr_lanes; i++) {
+			if (lane_polarities[1] != lane_polarities[i])
+				DRM_DEV_ERROR(dsi->dev, "Data lanes polarities do not match");
+		}
+		if (lane_polarities[0])
+			dsi->swap_dn_dp_clk = true;
+		if (lane_polarities[1])
+			dsi->swap_dn_dp_data = true;
+	}
+
 	return 0;
 }
 
diff --git a/include/drm/bridge/samsung-dsim.h b/include/drm/bridge/samsung-dsim.h
index ba5484de2b30..6a37d1e079bf 100644
--- a/include/drm/bridge/samsung-dsim.h
+++ b/include/drm/bridge/samsung-dsim.h
@@ -95,6 +95,8 @@ struct samsung_dsim {
 	u32 mode_flags;
 	u32 format;
 
+	bool swap_dn_dp_clk;
+	bool swap_dn_dp_data;
 	int state;
 	struct drm_property *brightness;
 	struct completion completed;
-- 
2.34.1

