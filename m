Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 063402F8978
	for <lists+devicetree@lfdr.de>; Sat, 16 Jan 2021 00:38:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727695AbhAOXhn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 18:37:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726239AbhAOXhn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 18:37:43 -0500
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09C00C061757
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 15:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
        Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
        :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
        Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=7/Fo6oP/6LZEHppZA9S/I1BsTGnD+77mAjyF1HNkxTE=; b=k41TxKQOIO0if8/m4lC41vtfQv
        Yez2NmVghmqK1vIo5rh6nqVOI5GyWhU5JlI2rJh4FcFhycReWU3mJeEtl5T6mT5fTtV6OluJbA6ES
        LYcxlulOCBILGSchilxEgXQ2kXmLLjF43iCusQnVbTpfyf000/rCP117UtvNA6WMQ2nLYvOnoFgtX
        pGqgF2yUMf1IFMqekitLDGYeFcIlodlb8vIi2aDXXbs3T9iza6l9trn8IcNCokcBSemzrT/QmylvO
        1ANirWeRuaD+gNpyS5O3TVsh2xEtESkdew4q+5+sZHJeEChWDRkLpXi/0vOQvO3lYrRMkUHEXoQ2R
        jw3U1sGQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:38590 helo=rmk-PC.armlinux.org.uk)
        by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1l0Ydz-0004Tz-HB; Fri, 15 Jan 2021 23:36:39 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1l0Ydz-0002pe-7p; Fri, 15 Jan 2021 23:36:39 +0000
From:   Russell King <rmk+kernel@armlinux.org.uk>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: lx2160a-cex7: increase at8035 PHY gigabit Tw
 parameter
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="utf-8"
Message-Id: <E1l0Ydz-0002pe-7p@rmk-PC.armlinux.org.uk>
Sender: Russell King <rmk@armlinux.org.uk>
Date:   Fri, 15 Jan 2021 23:36:39 +0000
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Increase the SmartEEE Tw parameter for Atheros PHYs to stop gigabit
links from sporadically dropping. Testing on this platform shows that
a value of 24 results in a stable link, whereas 23 or below has the
occasional drop.

Tested with a Netgear GS116 unmanaged switch link partner with Cat 5e
cabling.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
The corresponding part of this has been merged into net-next:
  https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/?id=e7fa5c80defe079190537fd6b6aecb8866b446a3

 arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
index d87d16460875..6c2eb2583434 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
@@ -40,6 +40,7 @@
 
 	rgmii_phy1: ethernet-phy@1 {
 		reg = <1>;
+		qca,smarteee-tw-us-1g = <24>;
 	};
 };
 
-- 
2.20.1

