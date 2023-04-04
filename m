Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D87FF6D5659
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 04:01:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231786AbjDDCBl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 22:01:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229689AbjDDCBk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 22:01:40 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D2BF1725
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 19:01:39 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id q23-20020a05683031b700b006a1370e214aso13793196ots.11
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 19:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680573698; x=1683165698;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ohM149XF2ZhahWcAJgbJmv8+mf6AIWwQ15+ABDtMw48=;
        b=CetjEtzdOvFRhni+NV0NKPSfVk7Y2LHkaXf0CDCxwMUBdBrj4b6wBDSdzs6r1iFFzA
         HBXnpLW26LcRoipFeTyjXA0YwZFf6Nhjqf0Vugykb8uVyYmSsflBdj7Pwq9WYhujK4W1
         6zmOgBmgOcU7nyepl2Ok819STalT/YGaG4jnJKgXU6n6Aw67+VW3H87c7oFxpChf6gpA
         Gi7+WcXpso73c6FFXprTe7VTnnX7aiSSEW8U8xXn/RH0koWio9iRKNDAv0fj/GYcVnTb
         W8jZGP+KttznnYrRDSAmQMZCTBWCEpmi+m046g6LyoImnQkHMqzbd2DxLV0u9VoqvbG6
         Yhsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680573698; x=1683165698;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ohM149XF2ZhahWcAJgbJmv8+mf6AIWwQ15+ABDtMw48=;
        b=USozoThPCMd0PBDDUUnIKgyeLpqSl47ondWBEKL8I7hCtKpZWtWbdaKmtO8Mq/7+OR
         pMhURdoHLYE+tSZYmAERb27Ns2K7cmQOb3nBpGhI/LmlJFGlIVWLsf2f5ZWR0ZVDk6fS
         yK791m3G+kwBBvKZXofSZHttjKKtwFxGKE2Fd5hT6Avb5OMk+UJozBALpuMoKLi9/fsX
         oozKq718arQ/QqadiuUV2MJJMnKrd6IPzwfSEGhw3yW+o2z4Rw0C6pelYlvCkJO/94TC
         ZDyrFfnCIdGcXorvYSC9dxij94DAUWaKTUoxEsNxfucnLglvDtEQ/F6wHbNTku67AbGF
         /ZDQ==
X-Gm-Message-State: AAQBX9dpPdDdbEtMGAK7dekrAywBWF3s7SmxqM9nWXvn4wQVgDcuAUgl
        7xOe7HYt3oBytGdIl/+UfNE=
X-Google-Smtp-Source: AKy350YRCAsiM7REtuuhFPupEswriUa+e40VlzNMzF/sz0zlwTEp0vy5A7aOybWDyc+RMSr5v2M0xw==
X-Received: by 2002:a05:6830:31b5:b0:69f:865a:a493 with SMTP id q21-20020a05683031b500b0069f865aa493mr658457ots.1.1680573698469;
        Mon, 03 Apr 2023 19:01:38 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:b774:9c46:6b8:3f2])
        by smtp.gmail.com with ESMTPSA id g3-20020a9d6c43000000b0069f509ad088sm4927955otq.65.2023.04.03.19.01.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Apr 2023 19:01:38 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     neil.armstrong@linaro.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: [PATCH v3 2/2] drm/bridge: fsl-ldb: Add i.MX6SX support
Date:   Mon,  3 Apr 2023 23:01:29 -0300
Message-Id: <20230404020129.509356-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230404020129.509356-1-festevam@gmail.com>
References: <20230404020129.509356-1-festevam@gmail.com>
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

From: Fabio Estevam <festevam@denx.de>

i.MX6SX has a single LVDS port and share a similar LDB_CTRL register layout
with i.MX8MP and i.MX93.

There is no LVDS CTRL register on the i.MX6SX, so only write to
this register on the appropriate SoCs.

Add support for the i.MX6SX LDB.

Tested on a imx6sx-sdb board with a Hannstar HSD100PXN1 LVDS panel
and also on a custom i.MX6SX-based board.

Signed-off-by: Fabio Estevam <festevam@denx.de>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Marek Vasut <marex@denx.de>
---
Changes since v2:
- Rename it to 'single_ctrl_reg' to make it clearer that on i.MX6X, there
is a single ctrl register. On the newer SoCs there are two ctrl registers.

Changes since v1:
- None

 drivers/gpu/drm/bridge/fsl-ldb.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/fsl-ldb.c b/drivers/gpu/drm/bridge/fsl-ldb.c
index 450b352914f4..f8e5d8ab98e3 100644
--- a/drivers/gpu/drm/bridge/fsl-ldb.c
+++ b/drivers/gpu/drm/bridge/fsl-ldb.c
@@ -56,6 +56,7 @@
 #define LVDS_CTRL_VBG_ADJ_MASK			GENMASK(19, 17)
 
 enum fsl_ldb_devtype {
+	IMX6SX_LDB,
 	IMX8MP_LDB,
 	IMX93_LDB,
 };
@@ -64,9 +65,14 @@ struct fsl_ldb_devdata {
 	u32 ldb_ctrl;
 	u32 lvds_ctrl;
 	bool lvds_en_bit;
+	bool single_ctrl_reg;
 };
 
 static const struct fsl_ldb_devdata fsl_ldb_devdata[] = {
+	[IMX6SX_LDB] = {
+		.ldb_ctrl = 0x18,
+		.single_ctrl_reg = true,
+	},
 	[IMX8MP_LDB] = {
 		.ldb_ctrl = 0x5c,
 		.lvds_ctrl = 0x128,
@@ -202,6 +208,9 @@ static void fsl_ldb_atomic_enable(struct drm_bridge *bridge,
 
 	regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->ldb_ctrl, reg);
 
+	if (fsl_ldb->devdata->single_ctrl_reg)
+		return;
+
 	/* Program LVDS_CTRL */
 	reg = LVDS_CTRL_CC_ADJ(2) | LVDS_CTRL_PRE_EMPH_EN |
 	      LVDS_CTRL_PRE_EMPH_ADJ(3) | LVDS_CTRL_VBG_EN;
@@ -228,7 +237,8 @@ static void fsl_ldb_atomic_disable(struct drm_bridge *bridge,
 		regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->lvds_ctrl,
 			     LVDS_CTRL_LVDS_EN);
 	else
-		regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->lvds_ctrl, 0);
+		if (!fsl_ldb->devdata->single_ctrl_reg)
+			regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->lvds_ctrl, 0);
 	regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->ldb_ctrl, 0);
 
 	clk_disable_unprepare(fsl_ldb->clk);
@@ -355,6 +365,8 @@ static void fsl_ldb_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id fsl_ldb_match[] = {
+	{ .compatible = "fsl,imx6sx-ldb",
+	  .data = &fsl_ldb_devdata[IMX6SX_LDB], },
 	{ .compatible = "fsl,imx8mp-ldb",
 	  .data = &fsl_ldb_devdata[IMX8MP_LDB], },
 	{ .compatible = "fsl,imx93-ldb",
-- 
2.34.1

