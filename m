Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B523B49CD01
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 15:58:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242462AbiAZO6b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 09:58:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242463AbiAZO63 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jan 2022 09:58:29 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 212A7C061747
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 06:58:29 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nCjkb-0005fL-RY; Wed, 26 Jan 2022 15:58:21 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nCjka-002l6a-Jp; Wed, 26 Jan 2022 15:58:20 +0100
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
Subject: [PATCH 11/27] clk: rockchip: rk3568: Add more PLL rates
Date:   Wed, 26 Jan 2022 15:55:33 +0100
Message-Id: <20220126145549.617165-12-s.hauer@pengutronix.de>
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

This adds a few more PLL settings needed for some standard resolutions:

297MHz    3840x2160-30.00
241.5MHz  2560x1440-59.95
135MHz    1280x1024-75.02
119MHz    1680x1050-59.88
108MHz    1280x1024-60.02
 78.75MHz 1024x768-75.03

Changes since v3:
- new patch

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/rockchip/clk-rk3568.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 69a9e8069a48..9d889fc46811 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -71,11 +71,17 @@ static struct rockchip_pll_rate_table rk3568_pll_rates[] = {
 	RK3036_PLL_RATE(500000000, 1, 125, 6, 1, 1, 0),
 	RK3036_PLL_RATE(408000000, 1, 68, 2, 2, 1, 0),
 	RK3036_PLL_RATE(312000000, 1, 78, 6, 1, 1, 0),
+	RK3036_PLL_RATE(297000000, 2, 99, 4, 1, 1, 0),
+	RK3036_PLL_RATE(241500000, 2, 161, 4, 2, 1, 0),
 	RK3036_PLL_RATE(216000000, 1, 72, 4, 2, 1, 0),
 	RK3036_PLL_RATE(200000000, 1, 100, 3, 4, 1, 0),
 	RK3036_PLL_RATE(148500000, 1, 99, 4, 4, 1, 0),
+	RK3036_PLL_RATE(135000000, 2, 45, 4, 1, 1, 0),
+	RK3036_PLL_RATE(119000000, 3, 119, 4, 2, 1, 0),
+	RK3036_PLL_RATE(108000000, 2, 45, 5, 1, 1, 0),
 	RK3036_PLL_RATE(100000000, 1, 150, 6, 6, 1, 0),
 	RK3036_PLL_RATE(96000000, 1, 96, 6, 4, 1, 0),
+	RK3036_PLL_RATE(78750000, 1, 96, 6, 4, 1, 0),
 	RK3036_PLL_RATE(74250000, 2, 99, 4, 4, 1, 0),
 	{ /* sentinel */ },
 };
-- 
2.30.2

