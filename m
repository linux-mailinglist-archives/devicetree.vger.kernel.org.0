Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E649701D1E
	for <lists+devicetree@lfdr.de>; Sun, 14 May 2023 13:46:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230190AbjENLqu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 14 May 2023 07:46:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229894AbjENLqt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 14 May 2023 07:46:49 -0400
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 210BAE53
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 04:46:48 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-1840ad6769fso2669864fac.0
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 04:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684064808; x=1686656808;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gyHlGYB80oRDTwmntEB4eE2KyN02HoYnzhC8yBB86pI=;
        b=VhkXYYoFSDFJf6rhfUGqKNZ4K17rvw4Nxv2omBRVE7CiV92hKfeok6aLjdqjHriTM/
         t/xyJDbt+C4lxSWNvMueOE1+ls+pwRrO855Ci7cQ9BrfFLdmVKKsYYZaLDTVTV9j0c2V
         GjWGVvR1M75rm1zG+YYSZo8dnbfNWvKkAGQJJnaraIgTs1gbTElIiwG0K5iqJvs4a5lc
         jQjjgHf73jNv022dqEosRPpKmAqrD1bbPK/xAzDxzjQIdIC2//zomARDcq7yTgHilUSe
         0rwzCgPkdmLQKS3CxJ8byTIiBsJDvz8N+hL+SvlcpaiiEGuIK5ksWVFwRivaLx85wTUd
         SHRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684064808; x=1686656808;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gyHlGYB80oRDTwmntEB4eE2KyN02HoYnzhC8yBB86pI=;
        b=O1/Gvkpeme+pMzBn0o2GF6SYhy4Dfrd9BclIpRlnvrgzc6Lv0ndQWq9d7bNQEHySVo
         yiTdqr64az/FriB5Sj+uQxW5yXBBlVR7NpnidWIlbeR/bT9GKNZW+OU80JIRrLMZhLgM
         a6buteihvLeBwB6rNCsec6g+cweiejp1GLF4M9Kgd2ERGQf3xx58Luqox5gnmeLqaazv
         Xah+2fxnzntANg15WKPEjKhI2uRU0e1mBPpCeBcqRvMbeN8axha4WrMYnXJYjUVcbOKF
         w/F95g7loXNH8LM39pss4BqINjmtZD6w5Ffhc22dSvBFtMBtERS9MJqpWP9DlaGrDcBa
         H6rg==
X-Gm-Message-State: AC+VfDwhZ9mIvj8Pu5UYC2DKR7sXio9T/pJ4ShZUhDsZ3uLDrzHXYqfD
        KD2WOu3VCOI8nNS3gN53Ruk=
X-Google-Smtp-Source: ACHHUZ4J9vwJHrSe8mPwRe+tPXJuzsy7gUAH2EQohaWQf5FZz0Utkz052QRTwo0hCaeeE5y7ozcC6w==
X-Received: by 2002:a4a:c583:0:b0:551:f7be:908a with SMTP id x3-20020a4ac583000000b00551f7be908amr3404715oop.0.1684064807716;
        Sun, 14 May 2023 04:46:47 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:804:1822:9c47:e4e6])
        by smtp.gmail.com with ESMTPSA id s25-20020a4ae559000000b0051134f333d3sm9961242oot.16.2023.05.14.04.46.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 May 2023 04:46:47 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     neil.armstrong@linaro.org
Cc:     marex@denx.de, dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        jagan@amarulasolutions.com, Fabio Estevam <festevam@denx.de>
Subject: [PATCH v4 2/2] drm: bridge: samsung-dsim: Implement support for clock/data polarity swap
Date:   Sun, 14 May 2023 08:46:25 -0300
Message-Id: <20230514114625.98372-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230514114625.98372-1-festevam@gmail.com>
References: <20230514114625.98372-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
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
Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes since v3:
- None

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

