Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F17DC47A838
	for <lists+devicetree@lfdr.de>; Mon, 20 Dec 2021 12:06:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229887AbhLTLGx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 06:06:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231539AbhLTLGx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Dec 2021 06:06:53 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06FB7C06173E
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 03:06:53 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1mzGVE-0004x4-DS; Mon, 20 Dec 2021 12:06:48 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1mzGVA-00EmEA-Ix; Mon, 20 Dec 2021 12:06:44 +0100
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
Subject: [PATCH 05/22] drm/rockchip: dw_hdmi: Add support for hclk
Date:   Mon, 20 Dec 2021 12:06:13 +0100
Message-Id: <20211220110630.3521121-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211220110630.3521121-1-s.hauer@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The rk3568 HDMI has an additional clock that needs to be enabled for the
HDMI controller to work. The purpose of that clock is not clear. It is
named "hclk" in the downstream driver, so use the same name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 3d7c3f6fdf223..b9928e622adf5 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -76,6 +76,7 @@ struct rockchip_hdmi {
 	const struct rockchip_hdmi_chip_data *chip_data;
 	struct clk *ref_clk;
 	struct clk *grf_clk;
+	struct clk *hclk_clk;
 	struct dw_hdmi *hdmi;
 	struct regulator *avdd_0v9;
 	struct regulator *avdd_1v8;
@@ -226,6 +227,16 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
 		return PTR_ERR(hdmi->grf_clk);
 	}
 
+	hdmi->hclk_clk = devm_clk_get(hdmi->dev, "hclk");
+	if (PTR_ERR(hdmi->hclk_clk) == -ENOENT) {
+		hdmi->hclk_clk = NULL;
+	} else if (PTR_ERR(hdmi->hclk_clk) == -EPROBE_DEFER) {
+		return -EPROBE_DEFER;
+	} else if (IS_ERR(hdmi->hclk_clk)) {
+		DRM_DEV_ERROR(hdmi->dev, "failed to get hclk_clk clock\n");
+		return PTR_ERR(hdmi->hclk_clk);
+	}
+
 	hdmi->avdd_0v9 = devm_regulator_get(hdmi->dev, "avdd-0v9");
 	if (IS_ERR(hdmi->avdd_0v9))
 		return PTR_ERR(hdmi->avdd_0v9);
@@ -593,6 +604,13 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 		goto err_clk;
 	}
 
+	ret = clk_prepare_enable(hdmi->hclk_clk);
+	if (ret) {
+		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI hclk clock: %d\n",
+			      ret);
+		goto err_clk;
+	}
+
 	if (hdmi->chip_data == &rk3568_chip_data) {
 		regmap_write(hdmi->regmap, RK3568_GRF_VO_CON1,
 			     HIWORD_UPDATE(RK3568_HDMI_SDAIN_MSK |
-- 
2.30.2

