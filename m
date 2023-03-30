Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA74B6D017B
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 12:42:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229983AbjC3Kmq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 06:42:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229655AbjC3Kmq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 06:42:46 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 536F27EEB
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 03:42:44 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6a11f365f87so484718a34.1
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 03:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680172963; x=1682764963;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YIFxKXVUHfM0d37cCgcyId44UL4K5UZcuNyUe7CoHHo=;
        b=iH6EM5IzodKNooc3/YPq+ikNsCYCS7pJvQ1ElswrmhWkbw2/JUGY14Z9zsUppR4twv
         iAkHFqc2PO9/CNiJ7rawYw1NQeexnUCPCnt2p5HNT1urI3xqZsapXqE1/s9tie2sDVJo
         tv4uaz+/bL9tePUifbHEOBoGBmZJEUHQMFI/qafDN60Kkp6Zd+tj24xkGQft8Mr9fgwh
         /DNkftZb6SGT9qbCZyTKXesNj/gvJFqM89pEftZ2jU4SohXNf/b4TjgvUB41jkSVM5VC
         HfvJANY+qSQOkwD8KJK7njVyls3gUW9F/9ozuDJKvfTQEuFuztEpfLqyrTh+pX7TIMfz
         dC2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680172963; x=1682764963;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YIFxKXVUHfM0d37cCgcyId44UL4K5UZcuNyUe7CoHHo=;
        b=LtR4+IawotJ8Wmm7efdIg4fIebIbQ359cCzNzjsrrHP3W9anUPVTTC4Z+EzhPEFIA3
         Ob+gmO4VUB297xiZMU2m1Cf6m2oz0h/FRLLvU/E/lItxsZG9x7c4Lqg6yGaRHz4lGMfN
         kcQopSg3NAbNQasJR8WSl4F0WXKfhWps1lBN/PtCfWR3bfIcjZIHdyi4rVCSY4X9IZiO
         UHnrd0N1euKi6l6nS19+mp+eYOyy1nb7az3lX0TWj3K+jLGNpny7EfUtgfsZmufRkqYq
         lS+Wftv+DgX7PtQViaRMaNauOjUiedjs0ckmaf5dNaAZtWxL2nZR4iL5Xw+bYsQ5pB/Q
         Sgvw==
X-Gm-Message-State: AAQBX9clL0soLsJISuIMJ9Enh3vqGjZX4M7UueJUD8rAh88DP+CHxc/O
        4VP+XC6tXI6UqmQSH1qhHvY=
X-Google-Smtp-Source: AKy350bqzOqY/SUHhX3cPZyuOYVwT5EZUxpKO1hjiP8LYcVD/4N9yUgs5ozQrBYWQTkOeqJojkeX8A==
X-Received: by 2002:a05:6870:65a3:b0:180:1519:35d6 with SMTP id fp35-20020a05687065a300b00180151935d6mr921996oab.1.1680172963631;
        Thu, 30 Mar 2023 03:42:43 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:bb2:6db6:1a29:3df5])
        by smtp.gmail.com with ESMTPSA id s4-20020a0568080b0400b0038755008179sm8414071oij.26.2023.03.30.03.42.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Mar 2023 03:42:43 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     neil.armstrong@linaro.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 2/2] drm/bridge: fsl-ldb: Add i.MX6SX support
Date:   Thu, 30 Mar 2023 07:42:33 -0300
Message-Id: <20230330104233.785097-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230330104233.785097-1-festevam@gmail.com>
References: <20230330104233.785097-1-festevam@gmail.com>
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

