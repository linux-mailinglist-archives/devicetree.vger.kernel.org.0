Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B7BD4C3F76
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 08:52:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238272AbiBYHwg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Feb 2022 02:52:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237007AbiBYHwe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Feb 2022 02:52:34 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A903049F3B
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 23:52:02 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nNVON-0000Pk-9z; Fri, 25 Feb 2022 08:51:55 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nNVOK-00BSXT-V5; Fri, 25 Feb 2022 08:51:52 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v7 03/24] drm/rockchip: dw_hdmi: rename vpll clock to reference clock
Date:   Fri, 25 Feb 2022 08:51:29 +0100
Message-Id: <20220225075150.2729401-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220225075150.2729401-1-s.hauer@pengutronix.de>
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"vpll" is a misnomer. A clock input to a device should be named after
the usage in the device, not after the clock that drives it. On the
rk3568 the same clock is driven by the HPLL.
To fix that, this patch renames the vpll clock to ref clock. The clock
name "vpll" is left for compatibility to old device trees.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v6:
    - Simplify by using devm_clk_get_optional() instead of devm_clk_get()

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 27 +++++++++++----------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 06c9ddef6f362..912181429880a 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -69,7 +69,7 @@ struct rockchip_hdmi {
 	struct regmap *regmap;
 	struct rockchip_encoder encoder;
 	const struct rockchip_hdmi_chip_data *chip_data;
-	struct clk *vpll_clk;
+	struct clk *ref_clk;
 	struct clk *grf_clk;
 	struct dw_hdmi *hdmi;
 	struct phy *phy;
@@ -201,14 +201,15 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
 		return PTR_ERR(hdmi->regmap);
 	}
 
-	hdmi->vpll_clk = devm_clk_get(hdmi->dev, "vpll");
-	if (PTR_ERR(hdmi->vpll_clk) == -ENOENT) {
-		hdmi->vpll_clk = NULL;
-	} else if (PTR_ERR(hdmi->vpll_clk) == -EPROBE_DEFER) {
+	hdmi->ref_clk = devm_clk_get_optional(hdmi->dev, "ref");
+	if (!hdmi->ref_clk)
+		hdmi->ref_clk = devm_clk_get_optional(hdmi->dev, "vpll");
+
+	if (PTR_ERR(hdmi->ref_clk) == -EPROBE_DEFER) {
 		return -EPROBE_DEFER;
-	} else if (IS_ERR(hdmi->vpll_clk)) {
-		DRM_DEV_ERROR(hdmi->dev, "failed to get vpll clock\n");
-		return PTR_ERR(hdmi->vpll_clk);
+	} else if (IS_ERR(hdmi->ref_clk)) {
+		DRM_DEV_ERROR(hdmi->dev, "failed to get reference clock\n");
+		return PTR_ERR(hdmi->ref_clk);
 	}
 
 	hdmi->grf_clk = devm_clk_get(hdmi->dev, "grf");
@@ -262,7 +263,7 @@ static void dw_hdmi_rockchip_encoder_mode_set(struct drm_encoder *encoder,
 {
 	struct rockchip_hdmi *hdmi = to_rockchip_hdmi(encoder);
 
-	clk_set_rate(hdmi->vpll_clk, adj_mode->clock * 1000);
+	clk_set_rate(hdmi->ref_clk, adj_mode->clock * 1000);
 }
 
 static void dw_hdmi_rockchip_encoder_enable(struct drm_encoder *encoder)
@@ -542,9 +543,9 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 		return ret;
 	}
 
-	ret = clk_prepare_enable(hdmi->vpll_clk);
+	ret = clk_prepare_enable(hdmi->ref_clk);
 	if (ret) {
-		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI vpll: %d\n",
+		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI reference clock: %d\n",
 			      ret);
 		return ret;
 	}
@@ -563,7 +564,7 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 	if (IS_ERR(hdmi->hdmi)) {
 		ret = PTR_ERR(hdmi->hdmi);
 		drm_encoder_cleanup(encoder);
-		clk_disable_unprepare(hdmi->vpll_clk);
+		clk_disable_unprepare(hdmi->ref_clk);
 	}
 
 	return ret;
@@ -575,7 +576,7 @@ static void dw_hdmi_rockchip_unbind(struct device *dev, struct device *master,
 	struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
 
 	dw_hdmi_unbind(hdmi->hdmi);
-	clk_disable_unprepare(hdmi->vpll_clk);
+	clk_disable_unprepare(hdmi->ref_clk);
 }
 
 static const struct component_ops dw_hdmi_rockchip_ops = {
-- 
2.30.2

