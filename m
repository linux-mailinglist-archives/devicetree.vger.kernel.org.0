Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16F4B2EFB97
	for <lists+devicetree@lfdr.de>; Sat,  9 Jan 2021 00:11:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725792AbhAHXK6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jan 2021 18:10:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725775AbhAHXK5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jan 2021 18:10:57 -0500
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBB1AC061757
        for <devicetree@vger.kernel.org>; Fri,  8 Jan 2021 15:10:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
        Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
        :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
        Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=SCEe2o5k7lfVIyaxuoL9kB2sBsf0VRcVP3w4WZYu07Q=; b=s/5RazLgsAP+2ixf62/ziDXr22
        Ta3v+q72SzbvzNXZ1GW/qbRco1IJ2tFZikezCte0Dy/PYuweAVPUmVASdKpxVfByWG3o0H99kFA4p
        Fymipv2EyKvHND/kUq9cwjijXuR4dQhxXi90RWaDYO24SP8VvDMaHl23Wcvq5LBW4JALCvbSVZVl/
        YBSghjVs6Qg5mEWGAyfIr4v5eL4bsE1by0m+LPZbOC3VxMAYZvPnsU9Qk6tkKC2sZsrxm/4yOpfqO
        /aDXsaFXG6a+QvbLpVhx2iXIO55D3Smo5LnKdHBjuH9ygVWXqleXTqzkVryvo0ryu3W+NfZEcZ6Na
        5zy72yTA==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:40282 helo=rmk-PC.armlinux.org.uk)
        by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1ky0tK-0004Y6-ET; Fri, 08 Jan 2021 23:09:58 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1ky0tK-0005Js-78; Fri, 08 Jan 2021 23:09:58 +0000
From:   Russell King <rmk+kernel@armlinux.org.uk>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: lx2160a-clearfog-itx: add power button support
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="utf-8"
Message-Id: <E1ky0tK-0005Js-78@rmk-PC.armlinux.org.uk>
Sender: Russell King <rmk@armlinux.org.uk>
Date:   Fri, 08 Jan 2021 23:09:58 +0000
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the power button.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
I see Rabeeh has added a similar (identical) patch to the one I've been
carrying in my tree since 14 September 2019 to the lx2160a_build
repository, so let's mainline this.

 .../boot/dts/freescale/fsl-lx2160a-clearfog-itx.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-itx.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-itx.dtsi
index f3741a32e868..2b63235ca627 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-itx.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-itx.dtsi
@@ -8,6 +8,7 @@
 /dts-v1/;
 
 #include "fsl-lx2160a-cex7.dtsi"
+#include <dt-bindings/input/linux-event-codes.h>
 
 / {
 	aliases {
@@ -18,6 +19,17 @@
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		key {
+			label = "power";
+			linux,can-disable;
+			linux,code = <KEY_POWER>;
+			gpios = <&gpio2 6 GPIO_ACTIVE_LOW>;
+		};
+	};
 };
 
 &emdio2 {
-- 
2.20.1

