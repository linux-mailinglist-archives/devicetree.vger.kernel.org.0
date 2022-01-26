Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C416849CCFE
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 15:58:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242426AbiAZO63 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 09:58:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242460AbiAZO62 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jan 2022 09:58:28 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6B2CC06161C
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 06:58:27 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nCjkb-0005fI-R8; Wed, 26 Jan 2022 15:58:21 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nCjka-002l6U-IY; Wed, 26 Jan 2022 15:58:20 +0100
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
        Douglas Anderson <dianders@chromium.org>,
        Yakir Yang <ykk@rock-chips.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 09/27] drm/rockchip: dw_hdmi: Set cur_ctr to 0 always
Date:   Wed, 26 Jan 2022 15:55:31 +0100
Message-Id: <20220126145549.617165-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220126145549.617165-1-s.hauer@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Douglas Anderson <dianders@chromium.org>

Jitter was improved by lowering the MPLL bandwidth to account for high
frequency noise in the rk3288 PLL.  In each case MPLL bandwidth was
lowered only enough to get us a comfortable margin.  We believe that
lowering the bandwidth like this is safe given sufficient testing.

Changes since v3:
- new patch

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Yakir Yang <ykk@rock-chips.com>
(am from https://patchwork.kernel.org/patch/9223301/)
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 16 ++--------------
 1 file changed, 2 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index c44eb4d2e2d5..77f82a4fd027 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -176,20 +176,8 @@ static const struct dw_hdmi_mpll_config rockchip_mpll_cfg[] = {
 static const struct dw_hdmi_curr_ctrl rockchip_cur_ctr[] = {
 	/*      pixelclk    bpp8    bpp10   bpp12 */
 	{
-		40000000,  { 0x0018, 0x0018, 0x0018 },
-	}, {
-		65000000,  { 0x0028, 0x0028, 0x0028 },
-	}, {
-		66000000,  { 0x0038, 0x0038, 0x0038 },
-	}, {
-		74250000,  { 0x0028, 0x0038, 0x0038 },
-	}, {
-		83500000,  { 0x0028, 0x0038, 0x0038 },
-	}, {
-		146250000, { 0x0038, 0x0038, 0x0038 },
-	}, {
-		148500000, { 0x0000, 0x0038, 0x0038 },
-	}, {
+		600000000, { 0x0000, 0x0000, 0x0000 },
+	},  {
 		~0UL,      { 0x0000, 0x0000, 0x0000},
 	}
 };
-- 
2.30.2

