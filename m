Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A14714B9AFE
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 09:30:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237619AbiBQIa2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 03:30:28 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:41850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237694AbiBQIaZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 03:30:25 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 962FF206DE2
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 00:30:11 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nKcAs-0002E5-By; Thu, 17 Feb 2022 09:30:02 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nKcAp-00ClT0-Qh; Thu, 17 Feb 2022 09:29:59 +0100
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
Subject: [PATCH v6 07/23] drm/rockchip: dw_hdmi: add regulator support
Date:   Thu, 17 Feb 2022 09:29:38 +0100
Message-Id: <20220217082954.2967889-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220217082954.2967889-1-s.hauer@pengutronix.de>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
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

The RK3568 has HDMI_TX_AVDD0V9 and HDMI_TX_AVDD_1V8 supply inputs needed
for the HDMI port. add support for these to the driver for boards which
have them supplied by switchable regulators.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 41 +++++++++++++++++++--
 1 file changed, 38 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index efaff4017086b..11acd4668ebef 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -9,6 +9,7 @@
 #include <linux/platform_device.h>
 #include <linux/phy/phy.h>
 #include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
 
 #include <drm/bridge/dw_hdmi.h>
 #include <drm/drm_edid.h>
@@ -76,6 +77,8 @@ struct rockchip_hdmi {
 	struct clk *ref_clk;
 	struct clk *grf_clk;
 	struct dw_hdmi *hdmi;
+	struct regulator *avdd_0v9;
+	struct regulator *avdd_1v8;
 	struct phy *phy;
 };
 
@@ -228,6 +231,14 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
 		return PTR_ERR(hdmi->grf_clk);
 	}
 
+	hdmi->avdd_0v9 = devm_regulator_get(hdmi->dev, "avdd-0v9");
+	if (IS_ERR(hdmi->avdd_0v9))
+		return PTR_ERR(hdmi->avdd_0v9);
+
+	hdmi->avdd_1v8 = devm_regulator_get(hdmi->dev, "avdd-1v8");
+	if (IS_ERR(hdmi->avdd_1v8))
+		return PTR_ERR(hdmi->avdd_1v8);
+
 	return 0;
 }
 
@@ -568,11 +579,23 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 		return ret;
 	}
 
+	ret = regulator_enable(hdmi->avdd_0v9);
+	if (ret) {
+		DRM_DEV_ERROR(hdmi->dev, "failed to enable avdd0v9: %d\n", ret);
+		goto err_avdd_0v9;
+	}
+
+	ret = regulator_enable(hdmi->avdd_1v8);
+	if (ret) {
+		DRM_DEV_ERROR(hdmi->dev, "failed to enable avdd1v8: %d\n", ret);
+		goto err_avdd_1v8;
+	}
+
 	ret = clk_prepare_enable(hdmi->ref_clk);
 	if (ret) {
 		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI reference clock: %d\n",
 			      ret);
-		return ret;
+		goto err_clk;
 	}
 
 	if (hdmi->chip_data == &rk3568_chip_data) {
@@ -596,10 +619,19 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 	 */
 	if (IS_ERR(hdmi->hdmi)) {
 		ret = PTR_ERR(hdmi->hdmi);
-		drm_encoder_cleanup(encoder);
-		clk_disable_unprepare(hdmi->ref_clk);
+		goto err_bind;
 	}
 
+	return 0;
+
+err_bind:
+	clk_disable_unprepare(hdmi->ref_clk);
+	drm_encoder_cleanup(encoder);
+err_clk:
+	regulator_disable(hdmi->avdd_1v8);
+err_avdd_1v8:
+	regulator_disable(hdmi->avdd_0v9);
+err_avdd_0v9:
 	return ret;
 }
 
@@ -610,6 +642,9 @@ static void dw_hdmi_rockchip_unbind(struct device *dev, struct device *master,
 
 	dw_hdmi_unbind(hdmi->hdmi);
 	clk_disable_unprepare(hdmi->ref_clk);
+
+	regulator_disable(hdmi->avdd_1v8);
+	regulator_disable(hdmi->avdd_0v9);
 }
 
 static const struct component_ops dw_hdmi_rockchip_ops = {
-- 
2.30.2

