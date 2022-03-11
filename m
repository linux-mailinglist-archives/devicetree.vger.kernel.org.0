Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 155944D5D6B
	for <lists+devicetree@lfdr.de>; Fri, 11 Mar 2022 09:33:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233043AbiCKIep (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 03:34:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233540AbiCKIen (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 03:34:43 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58F8718C78E
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 00:33:40 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nSaiL-0000aN-6g; Fri, 11 Mar 2022 09:33:33 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nSaiE-0040gk-Hb; Fri, 11 Mar 2022 09:33:26 +0100
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
Subject: [PATCH v8 09/24] drm/rockchip: dw_hdmi: Add support for niu clk
Date:   Fri, 11 Mar 2022 09:33:08 +0100
Message-Id: <20220311083323.887372-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220311083323.887372-1-s.hauer@pengutronix.de>
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
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

The rk3568 HDMI has an additional clock that needs to be enabled for the
HDMI controller to work. This clock is not needed for the HDMI
controller itself, but to make the SoC internal bus logic work. From the
reference manual:

> 2.8.6 NIU Clock gating reliance
>
> A part of niu clocks have a dependence on another niu clock in order to
> sharing the internal bus. When these clocks are in use, another niu
> clock must be opened, and cannot be gated.  These clocks and the special
> clock on which they are relied are as following:
>
> Clocks which have dependency     The clock which can not be gated
> -----------------------------------------------------------------
> ...
> pclk_vo_niu, hclk_vo_s_niu       hclk_vo_niu
> ...

The clock framework does not support turning on a clock whenever another
clock is turned on, so this patch adds support for the dependent clock
to the HDMI driver. We call it "NIU", which is for "Native Interface
Unit"

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v7:
    - rename hclk to niu

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index fe4f9556239ac..7adf9044cb73b 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -76,6 +76,7 @@ struct rockchip_hdmi {
 	const struct rockchip_hdmi_chip_data *chip_data;
 	struct clk *ref_clk;
 	struct clk *grf_clk;
+	struct clk *niu_clk;
 	struct dw_hdmi *hdmi;
 	struct regulator *avdd_0v9;
 	struct regulator *avdd_1v8;
@@ -229,6 +230,14 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
 		return PTR_ERR(hdmi->grf_clk);
 	}
 
+	hdmi->niu_clk = devm_clk_get_optional(hdmi->dev, "niu");
+	if (PTR_ERR(hdmi->niu_clk) == -EPROBE_DEFER) {
+		return -EPROBE_DEFER;
+	} else if (IS_ERR(hdmi->niu_clk)) {
+		DRM_DEV_ERROR(hdmi->dev, "failed to get niu clock\n");
+		return PTR_ERR(hdmi->niu_clk);
+	}
+
 	hdmi->avdd_0v9 = devm_regulator_get(hdmi->dev, "avdd-0v9");
 	if (IS_ERR(hdmi->avdd_0v9))
 		return PTR_ERR(hdmi->avdd_0v9);
@@ -596,6 +605,13 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 		goto err_clk;
 	}
 
+	ret = clk_prepare_enable(hdmi->niu_clk);
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

