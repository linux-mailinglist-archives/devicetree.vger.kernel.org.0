Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFED646D4C4
	for <lists+devicetree@lfdr.de>; Wed,  8 Dec 2021 14:48:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232511AbhLHNv7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 08:51:59 -0500
Received: from comms.puri.sm ([159.203.221.185]:40606 "EHLO comms.puri.sm"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232823AbhLHNv7 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 8 Dec 2021 08:51:59 -0500
Received: from localhost (localhost [127.0.0.1])
        by comms.puri.sm (Postfix) with ESMTP id 453BADF33E;
        Wed,  8 Dec 2021 05:47:57 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
        by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id l-SkG54PBIr2; Wed,  8 Dec 2021 05:47:56 -0800 (PST)
From:   Martin Kepplinger <martin.kepplinger@puri.sm>
To:     l.stach@pengutronix.de
Cc:     aford173@gmail.com, devicetree@vger.kernel.org, festevam@gmail.com,
        frieder.schrempf@kontron.de, kernel@pengutronix.de,
        linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
        marex@denx.de, patchwork-lst@pengutronix.de, robh@kernel.org,
        shawnguo@kernel.org, tharvey@gateworks.com,
        Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: [PATCH] hack: soc: imx: gpcv2: avoid unbalanced powering off of one device
Date:   Wed,  8 Dec 2021 14:47:25 +0100
Message-Id: <20211208134725.3328030-1-martin.kepplinger@puri.sm>
In-Reply-To: <20211002005954.1367653-8-l.stach@pengutronix.de>
References: <20211002005954.1367653-8-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi Lucas,

I've posted this hack with a report here a few days back:
https://lore.kernel.org/linux-arm-kernel/20211122115145.177196-1-martin.kepplinger@puri.sm/

But now that I see these suspend/resume callback additions things
again go wrong on my imx8mq system.

With a v5.16-rc4 based tree and printing on regulator enable/disable,
system suspend + resume looks like so:

[   47.559681] imx-pgc imx-pgc-domain.5: enable
[   47.584679] imx-pgc imx-pgc-domain.0: disable
[   47.646592] imx-pgc imx-pgc-domain.5: disable
[   47.823627] imx-pgc imx-pgc-domain.5: enable
[   47.994805] imx-pgc imx-pgc-domain.5: disable
[   48.664018] imx-pgc imx-pgc-domain.5: enable
[   48.805828] imx-pgc imx-pgc-domain.5: disable
[   49.909579] imx-pgc imx-pgc-domain.6: enable
[   50.013079] imx-pgc imx-pgc-domain.6: failed to enable regulator: -110
[   50.013686] imx-pgc imx-pgc-domain.5: enable
[   50.120224] imx-pgc imx-pgc-domain.5: failed to enable regulator: -110
[   50.120324] imx-pgc imx-pgc-domain.0: enable
[   53.703468] imx-pgc imx-pgc-domain.0: disable
[   53.746368] imx-pgc imx-pgc-domain.5: disable
[   53.754452] imx-pgc imx-pgc-domain.5: failed to disable regulator: -5
[   53.765045] imx-pgc imx-pgc-domain.6: disable
[   53.822269] imx-pgc imx-pgc-domain.6: failed to disable regulator: -5


But my main point is that the situation is a bit hard to understand
right now. when transitioning to system suspend we expect (if disabled)
enable+disable to happen, right? and after resuming: enable (+ runtime disable).
Makes sense functinally, but I wonder if we could implement it a bit clearer?

Anyway I'm also not sure whether imx8mq might be different than your
imx8mm system.

When I revert your one patch and add my hack below again, things
work again and the system resumes without errors.

Can you imagine what might be missing here?

thanks a lot for working on this!

                               martin
---
 drivers/soc/imx/gpcv2.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 07610bf87854..898886c9d799 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -319,6 +319,9 @@ static int imx_pgc_power_down(struct generic_pm_domain *genpd)
 	u32 reg_val, pgc;
 	int ret;
 
+	if (pm_runtime_suspended(domain->dev))
+		return 0;
+
 	/* Enable reset clocks for all devices in the domain */
 	if (!domain->keep_clocks) {
 		ret = clk_bulk_prepare_enable(domain->num_clks, domain->clks);
-- 
2.30.2

