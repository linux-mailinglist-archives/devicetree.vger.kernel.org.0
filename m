Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36D2747A84E
	for <lists+devicetree@lfdr.de>; Mon, 20 Dec 2021 12:07:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231565AbhLTLHO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 06:07:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230242AbhLTLHN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Dec 2021 06:07:13 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DBE5C061574
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 03:07:13 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1mzGVE-0004xI-DS; Mon, 20 Dec 2021 12:06:48 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1mzGVA-00EmEq-Rw; Mon, 20 Dec 2021 12:06:44 +0100
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
Subject: [PATCH 19/22] clk: rk3568: Add CLK_SET_RATE_PARENT to the HDMI reference clock
Date:   Mon, 20 Dec 2021 12:06:27 +0100
Message-Id: <20211220110630.3521121-20-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211220110630.3521121-1-s.hauer@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
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
index 604a367bc498a..1fe78a58010ea 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -1562,7 +1562,7 @@ static struct rockchip_clk_branch rk3568_clk_pmu_branches[] __initdata = {
 			RK3568_PMU_CLKGATE_CON(2), 14, GFLAGS),
 	GATE(XIN_OSC0_EDPPHY_G, "xin_osc0_edpphy_g", "xin24m", 0,
 			RK3568_PMU_CLKGATE_CON(2), 15, GFLAGS),
-	MUX(CLK_HDMI_REF, "clk_hdmi_ref", clk_hdmi_ref_p, 0,
+	MUX(CLK_HDMI_REF, "clk_hdmi_ref", clk_hdmi_ref_p, CLK_SET_RATE_PARENT,
 			RK3568_PMU_CLKSEL_CON(8), 7, 1, MFLAGS),
 };
 
-- 
2.30.2

