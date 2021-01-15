Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF79E2F8976
	for <lists+devicetree@lfdr.de>; Sat, 16 Jan 2021 00:38:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727322AbhAOXhc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 18:37:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727068AbhAOXhc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 18:37:32 -0500
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFE4CC0613D3
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 15:36:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
        Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
        :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
        Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=YPUuGtIagED/A/+yzwQ7MiLRx/yGzX/v2mpzlBDqgMA=; b=MMPkRqmNEucuzL7a9TSKvk7MIg
        vF1gN3bd6aqyB9rtCD9/734ZNH6ltvnH/e4GvuOUKJ9rd2QlR7jwxcSINcA5sTuf+9/1pu6aCVw46
        K6WwhkcSSh+ywSVvXnLQP5ufoCvS64b17vD8azv+3UzxqcLosC8PhO7Boz0iRpbw5pt93XfQW7tjZ
        L7j6XbW1dKYgtf7qGQ8xUC5YYwjQaEteTlGQPAt73aqj7FMGoORPIjjhQLnvFw5zIM2MEJ2uGwBPQ
        Zqav8aA/ciw3G1KZn0KGVrqG9YpZp0YiLIqPcQJn5IqZmfnRbsVFQtrLVVzsvn7E0o4OJHAWucu3F
        7zxMukzA==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:38592 helo=rmk-PC.armlinux.org.uk)
        by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1l0Ye4-0004UA-JY; Fri, 15 Jan 2021 23:36:44 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1l0Ye4-0002pq-CQ; Fri, 15 Jan 2021 23:36:44 +0000
From:   Russell King <rmk+kernel@armlinux.org.uk>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: imx6-sr-som: increase at8035 PHY gigabit Tw
 parameter
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="utf-8"
Message-Id: <E1l0Ye4-0002pq-CQ@rmk-PC.armlinux.org.uk>
Sender: Russell King <rmk@armlinux.org.uk>
Date:   Fri, 15 Jan 2021 23:36:44 +0000
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Increase the SmartEEE Tw parameter for Atheros PHYs to stop gigabit
links from sporadically dropping. Jon Nettleton found that a value
of 23 was the minimum to give a stable link, but testing with the
Com Express 7 module shows 24 is the minimum - so 23 may still be on
the margins. Use 24 instead for consistency across SolidRun platforms.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
The corresponding part of this has been merged into net-next:
  https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/?id=e7fa5c80defe079190537fd6b6aecb8866b446a3

 arch/arm/boot/dts/imx6qdl-sr-som.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
index 1d1f9ec27045..fd387960a2c9 100644
--- a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
@@ -69,10 +69,12 @@
 		ethernet-phy@0 {
 			reg = <0>;
 			qca,clk-out-frequency = <125000000>;
+			qca,smarteee-tw-us-1g = <24>;
 		};
 		ethernet-phy@4 {
 			reg = <4>;
 			qca,clk-out-frequency = <125000000>;
+			qca,smarteee-tw-us-1g = <24>;
 		};
 	};
 };
-- 
2.20.1

