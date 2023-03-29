Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C50066CD9E4
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 15:04:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229981AbjC2NEc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 09:04:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229920AbjC2NEb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 09:04:31 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DF142D41
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:04:29 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-1779cb5d91dso26683fac.1
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680095068; x=1682687068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W2nlDdxQ+8oqnxMfAmS2IM4hfEcDsCHfoeDDJXGLcGs=;
        b=Ghnd82MukIsklEvY2FPCOYreW8VJlcWxEqiwIg3Dw0YJxNPuMmo3Ncx00mnTor7maz
         n9KTPnc/dAtLKMmbaibtTY2bLdQQxLkNRitcIx7fwCqdv458HruOTuNVzU5SuscqzrsL
         L8Au8dwLlD2529piZbHwzX1/Jx3Ksv9UOQW7aduiGy8tFRBkusVpLg+eqHzqdZdSOdA1
         LGHhWCUQVs+vLEplE/lHjYMJn6h7xdKJgNOj1kK4kEDtx/7SCurB1RIGba/VI7/xTOB2
         FSQo/WBGqJv6afMqHFMiCUoKwjNgUYvUKDMHO3qy2etCof5aG1QJ/naT6EZqCYoWqBBJ
         vpsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680095068; x=1682687068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W2nlDdxQ+8oqnxMfAmS2IM4hfEcDsCHfoeDDJXGLcGs=;
        b=ITbDIFL1ws93mypGV65K8BziS5KiSoLBgydgqEmjJ+cxYmlJejWsJSLe9qSO1hAS55
         aiPPaoYP2zriBerVz3aMYwFUY41ncf4lMRla3wZCGwmsZ7HIwCaP81ohs/FCw3BlxF64
         U/8gpPVEc8G62bdtapUE7rLvu7U/0WSbdSFGfF+jpKQCzcR2N22Z1mXy+4lVXvce1IyM
         3dFwSqo/K2RoaqJOdz0gp2ZY6n//Ef6dl0QS3e1241i9vDwUKISivPKGQOA5aeskzLn5
         dy0wn5LNAg0o7p2JpkbRtCpqNvY9QKoUnISYoBgXKSgYJoTunWwXShEKwt9gcJBBvrou
         PUXQ==
X-Gm-Message-State: AO0yUKVdxMvtvftrmf3xJzKWsOB6fHXaJPgAu+xTRxAG9ZKwEE4dIJr7
        eHRHjXTEHrtcs1UX8psfCH0=
X-Google-Smtp-Source: AKy350bKUi+LEKXbWkxah0X0OpfbGYrotDH6ZTw7UY8XP7oE/qIJgJiTYuMSFNAHUUxwW4pG885Myg==
X-Received: by 2002:a05:6870:b14c:b0:177:8383:7287 with SMTP id a12-20020a056870b14c00b0017783837287mr10879516oal.5.1680095068471;
        Wed, 29 Mar 2023 06:04:28 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:1c2d:271:d34:84ea])
        by smtp.gmail.com with ESMTPSA id vh22-20020a0568710d1600b00177c21c3ae1sm11756738oab.54.2023.03.29.06.04.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 06:04:28 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     neil.armstrong@linaro.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/2] drm/bridge: fsl-ldb: Add i.MX6SX support
Date:   Wed, 29 Mar 2023 10:04:13 -0300
Message-Id: <20230329130413.683636-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230329130413.683636-1-festevam@gmail.com>
References: <20230329130413.683636-1-festevam@gmail.com>
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
---
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
+	bool not_lvds_ctrl;
 };
 
 static const struct fsl_ldb_devdata fsl_ldb_devdata[] = {
+	[IMX6SX_LDB] = {
+		.ldb_ctrl = 0x18,
+		.not_lvds_ctrl = true,
+	},
 	[IMX8MP_LDB] = {
 		.ldb_ctrl = 0x5c,
 		.lvds_ctrl = 0x128,
@@ -202,6 +208,9 @@ static void fsl_ldb_atomic_enable(struct drm_bridge *bridge,
 
 	regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->ldb_ctrl, reg);
 
+	if (fsl_ldb->devdata->not_lvds_ctrl)
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
+		if (!fsl_ldb->devdata->not_lvds_ctrl)
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

