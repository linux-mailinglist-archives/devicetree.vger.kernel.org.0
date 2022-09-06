Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 625D65AF30F
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 19:49:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229580AbiIFRs5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 13:48:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229759AbiIFRsn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 13:48:43 -0400
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com [IPv6:2607:f8b0:4864:20::c33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AB8785A98
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 10:48:32 -0700 (PDT)
Received: by mail-oo1-xc33.google.com with SMTP id g5-20020a4ac4c5000000b0044af7c8c4b3so2061526ooq.1
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 10:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=Z861jG7BMhx/UqAm+BGR/UQTJzU7P1PboLjcZWY5WRs=;
        b=LqcTc00u+oeRZejpL1N3HqNcfAJDrWhIBRQ2xgjGMPx6CmMtjgbLbbeJm+Pj/0lqWa
         1bm/L8YEZdDIKdB2QCxPD8HzVkB8cD687s8croIEOkwnf2VonIynKgO2BTriZsqRWeUv
         FhvbQnrSLzRnjH68kAiZRHm0h3tkV+E0niHAQYWwWt79ukPNrTRsZv66suR5DCrRB6p0
         YVkFfeB/tcmYUMgz7UCb9ukJsFrCg8LZeSq/ulRBC/VZlKQdYVjPHkP6+nrUTVrh8Fxz
         Ah7tTNV2DV6FFVqz59tjTeDQTz2QHHDMcdn0MsFBSjEPpSot4DlokBofMQNW/LBLgSn7
         GT8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Z861jG7BMhx/UqAm+BGR/UQTJzU7P1PboLjcZWY5WRs=;
        b=17jlG0Zhp0F2c0GT8aNoyfWptqVQTpqNZn4zt7flcB09aqnwFxpdL3B1Pw9FD2oAJP
         MqlVUxoOQFRDrk03AYM+EMou8ROeDE3JV/8zWa/PEMsZMwdhGDYZLhi1O9ChSffmn/gB
         9gB/hrCEoZgQ7mAaZYDi7w+MJYhkA0JROsTcRbjxd7qsytaS4PCxRJKdfAypMR9oJoBx
         XVtOUsyHXFB33A2iCsbGb1U2I0IiKPt4gnST0Gcx3Lj2sDG9NhyP/HK4JfmsYKXSi3ap
         dj4tAPHq2JYxBiBlSsNJ5yYiKJrgbjGSfU7vJcvufliSLzq44GGZVy7eJvQfON6iHohz
         BKKw==
X-Gm-Message-State: ACgBeo3PtLfqj3Uox5KMYC5AdMecAcwC3+ecE/3sHQNOvNLU2WT/zDAC
        UOLyj4bwzkTHRe4bc8I+jlM=
X-Google-Smtp-Source: AA6agR5s+SV66YlDAHlmbOWm3Y9nLF+z1E5cig2we8mv7ZwsFpF1I68ZOTDKjho4zGBrFodk5eHsMw==
X-Received: by 2002:a4a:dcc2:0:b0:449:129e:17cd with SMTP id h2-20020a4adcc2000000b00449129e17cdmr18648183oou.98.1662486511693;
        Tue, 06 Sep 2022 10:48:31 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id o186-20020aca41c3000000b00344afa2b08bsm5568065oia.26.2022.09.06.10.48.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 10:48:31 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, cl@rock-chips.com,
        s.hauer@pengutronix.de, pgwipeout@gmail.com, vkoul@kernel.org,
        kishon@ti.com, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        heiko@sntech.de, hjc@rock-chips.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2 3/5] drm/rockchip: dsi: add rk3568 support
Date:   Tue,  6 Sep 2022 12:48:21 -0500
Message-Id: <20220906174823.28561-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220906174823.28561-1-macroalpha82@gmail.com>
References: <20220906174823.28561-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add the compatible and GRF definitions for the RK3568 soc.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 51 ++++++++++++++++++-
 1 file changed, 49 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 110e83aad9bb..bf6948125b84 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -179,6 +179,23 @@
 #define RK3399_TXRX_SRC_SEL_ISP0	BIT(4)
 #define RK3399_TXRX_TURNREQUEST		GENMASK(3, 0)
 
+#define RK3568_GRF_VO_CON2		0x0368
+#define RK3568_DSI0_SKEWCALHS		(0x1f << 11)
+#define RK3568_DSI0_FORCETXSTOPMODE	(0xf << 4)
+#define RK3568_DSI0_TURNDISABLE		BIT(2)
+#define RK3568_DSI0_FORCERXMODE		BIT(0)
+
+/*
+ * Note these registers do not appear in the datasheet, they are
+ * however present in the BSP driver which is where these values
+ * come from. Name GRF_VO_CON3 is assumed.
+ */
+#define RK3568_GRF_VO_CON3		0x36c
+#define RK3568_DSI1_SKEWCALHS		(0x1f << 11)
+#define RK3568_DSI1_FORCETXSTOPMODE	(0xf << 4)
+#define RK3568_DSI1_TURNDISABLE		BIT(2)
+#define RK3568_DSI1_FORCERXMODE		BIT(0)
+
 #define HIWORD_UPDATE(val, mask)	(val | (mask) << 16)
 
 enum {
@@ -735,8 +752,9 @@ static void dw_mipi_dsi_rockchip_config(struct dw_mipi_dsi_rockchip *dsi)
 static void dw_mipi_dsi_rockchip_set_lcdsel(struct dw_mipi_dsi_rockchip *dsi,
 					    int mux)
 {
-	regmap_write(dsi->grf_regmap, dsi->cdata->lcdsel_grf_reg,
-		mux ? dsi->cdata->lcdsel_lit : dsi->cdata->lcdsel_big);
+	if (dsi->cdata->lcdsel_grf_reg < 0)
+		regmap_write(dsi->grf_regmap, dsi->cdata->lcdsel_grf_reg,
+			mux ? dsi->cdata->lcdsel_lit : dsi->cdata->lcdsel_big);
 }
 
 static int
@@ -963,6 +981,8 @@ static int dw_mipi_dsi_rockchip_bind(struct device *dev,
 		DRM_DEV_ERROR(dev, "Failed to create drm encoder\n");
 		goto out_pll_clk;
 	}
+	rockchip_drm_encoder_set_crtc_endpoint_id(&dsi->encoder,
+						  dev->of_node, 0, 0);
 
 	ret = dw_mipi_dsi_bind(dsi->dmd, &dsi->encoder.encoder);
 	if (ret) {
@@ -1612,6 +1632,30 @@ static const struct rockchip_dw_dsi_chip_data rk3399_chip_data[] = {
 	{ /* sentinel */ }
 };
 
+static const struct rockchip_dw_dsi_chip_data rk3568_chip_data[] = {
+	{
+		.reg = 0xfe060000,
+		.lcdsel_grf_reg = -1,
+		.lanecfg1_grf_reg = RK3568_GRF_VO_CON2,
+		.lanecfg1 = HIWORD_UPDATE(0, RK3568_DSI0_SKEWCALHS |
+					  RK3568_DSI0_FORCETXSTOPMODE |
+					  RK3568_DSI0_TURNDISABLE |
+					  RK3568_DSI0_FORCERXMODE),
+		.max_data_lanes = 4,
+	},
+	{
+		.reg = 0xfe070000,
+		.lcdsel_grf_reg = -1,
+		.lanecfg1_grf_reg = RK3568_GRF_VO_CON3,
+		.lanecfg1 = HIWORD_UPDATE(0, RK3568_DSI1_SKEWCALHS |
+					  RK3568_DSI1_FORCETXSTOPMODE |
+					  RK3568_DSI1_TURNDISABLE |
+					  RK3568_DSI1_FORCERXMODE),
+		.max_data_lanes = 4,
+	},
+	{ /* sentinel */ }
+};
+
 static const struct of_device_id dw_mipi_dsi_rockchip_dt_ids[] = {
 	{
 	 .compatible = "rockchip,px30-mipi-dsi",
@@ -1622,6 +1666,9 @@ static const struct of_device_id dw_mipi_dsi_rockchip_dt_ids[] = {
 	}, {
 	 .compatible = "rockchip,rk3399-mipi-dsi",
 	 .data = &rk3399_chip_data,
+	}, {
+	 .compatible = "rockchip,rk3568-mipi-dsi",
+	 .data = &rk3568_chip_data,
 	},
 	{ /* sentinel */ }
 };
-- 
2.25.1

