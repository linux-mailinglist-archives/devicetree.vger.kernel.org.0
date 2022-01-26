Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B1E649CD00
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 15:58:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242458AbiAZO6a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 09:58:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242462AbiAZO63 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jan 2022 09:58:29 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B25AC06173B
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 06:58:29 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nCjkc-0005fZ-An; Wed, 26 Jan 2022 15:58:22 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nCjka-002l7I-SX; Wed, 26 Jan 2022 15:58:20 +0100
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
Subject: [PATCH 25/27] clk: rk3568: Add CLK_SET_RATE_PARENT to the HDMI reference clock
Date:   Wed, 26 Jan 2022 15:55:47 +0100
Message-Id: <20220126145549.617165-26-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220126145549.617165-1-s.hauer@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On the rk3568 we have this (simplified) situation:

 .--------.     .-----.    .---------.
-| hpll   |--.--| /n  |----|dclk_vop0|-
 `--------´  |  `-----´    `---------´
             |  .-----.    .---------.
             `--| /m  |----|dclk_vop1|-
             |  `-----´    `---------´
             |             .---------.
             `-------------|hdmi_ref |-
                           `---------´

For the HDMI to work the HDMI reference clock needs to be the same as the
pixel clock which means the dividers have be set to one. The last patch removed
the CLK_SET_RATE_PARENT flag from the pixel clocks which means the hpll is not
changed on pixel clock changes. In order to allow the HDMI controller to
set a suitable PLL rate we now add the CLK_SET_RATE_PARENT flag to the
HDMI reference clock. With this the flow becomes:

1) HDMI controller driver sets the rate to its pixel clock which means
   hpll is set to the pixel clock
2) VOP2 driver sets dclk_vop[012] to the pixel clock. As this can't change
   the hpll clock anymore this means only the divider is adjusted to the
   desired value of dividing by one.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/rockchip/clk-rk3568.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 7687c62d1fa8..63dfbeeeb06d 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -1568,7 +1568,7 @@ static struct rockchip_clk_branch rk3568_clk_pmu_branches[] __initdata = {
 			RK3568_PMU_CLKGATE_CON(2), 14, GFLAGS),
 	GATE(XIN_OSC0_EDPPHY_G, "xin_osc0_edpphy_g", "xin24m", 0,
 			RK3568_PMU_CLKGATE_CON(2), 15, GFLAGS),
-	MUX(CLK_HDMI_REF, "clk_hdmi_ref", clk_hdmi_ref_p, 0,
+	MUX(CLK_HDMI_REF, "clk_hdmi_ref", clk_hdmi_ref_p, CLK_SET_RATE_PARENT,
 			RK3568_PMU_CLKSEL_CON(8), 7, 1, MFLAGS),
 };
 
-- 
2.30.2

