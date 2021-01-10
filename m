Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19C7D2F0779
	for <lists+devicetree@lfdr.de>; Sun, 10 Jan 2021 14:59:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726341AbhAJN7P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Jan 2021 08:59:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726250AbhAJN7O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Jan 2021 08:59:14 -0500
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63C0EC061786
        for <devicetree@vger.kernel.org>; Sun, 10 Jan 2021 05:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
        Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
        :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
        Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=YZzFshoiAbH56chwqHW5f1x8zHVySegy4E38KYIBD88=; b=c+X9hdnY22fJFHr1jEbTL7g0fB
        4HekPrcz1LyIxrqz1RDbu8xBMt0f9FyHY8lPrmEWhXgo/LVj2pELY9DoiLeOZ0Vswnx2GwBXixYNX
        B/ymLU0ExYPkkbtwa4P9CV4Qr+MQDL0iqWwJEtvs3LdoDkR2A9Q8Ry7ChWeowgbXKbgsSofMFNEqJ
        BLqu8dtjDeyg9rviFOWTRbPLdgJ65zUHnNgy+Tj+sa8AOXTCr1QFfeAGIxmbPtAnTLo15OnMV09fd
        ABheESDM2jfifpFdIkZX6ThE2fUzgyye0qaF4zPSiMNVI1nViV/65TMK1rsoBX1hynvqba/j5u+Rf
        O2oa1lEw==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:53998 helo=rmk-PC.armlinux.org.uk)
        by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1kybEV-0005ry-K6; Sun, 10 Jan 2021 13:58:15 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1kybEV-0003w1-DS; Sun, 10 Jan 2021 13:58:15 +0000
From:   Russell King <rmk+kernel@armlinux.org.uk>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: lx2160a-cex7: delete RTC interrupt
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="utf-8"
Message-Id: <E1kybEV-0003w1-DS@rmk-PC.armlinux.org.uk>
Sender: Russell King <rmk@armlinux.org.uk>
Date:   Sun, 10 Jan 2021 13:58:15 +0000
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RTC interrupt is incorrect and prevents the RTC driver
initialising. In any case, the PCF2127 driver wants an active low
interrupt, which neither the GIC nor the GPIO blocks support.
There is an ISPPT block in the LX2160A, but this is not supported
in mainline kernels. So, just delete the interrupt.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
index 221f8a780df5..a7a4bca82d86 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
@@ -158,8 +158,6 @@
 	rtc@51 {
 		compatible = "nxp,pcf2129";
 		reg = <0x51>;
-		// IRQ10_B
-		interrupts = <GIC_SPI 150 IRQ_TYPE_LEVEL_HIGH>;
 	};
 };
 
-- 
2.20.1

