Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE15E228267
	for <lists+devicetree@lfdr.de>; Tue, 21 Jul 2020 16:40:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728462AbgGUOkk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jul 2020 10:40:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726412AbgGUOkk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jul 2020 10:40:40 -0400
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A590DC061794
        for <devicetree@vger.kernel.org>; Tue, 21 Jul 2020 07:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
        Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
        In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=3vCMk9EoOqaJ45p1YZ6hMwis7wZzoGWCLbS2xicYxJs=; b=orP6ckzNquXxnwNQQzKJ/PfZaA
        vlz9Nj0EPw0/Uk4aAUFh6JOaLk4R238U97qk3wF8fCanqzMRImKtmHbmfHJ4U1X1lSKxVYb0pH87m
        ONJIbO3p/j/8Xhl96P0dYySFaeVcU+qvEJuODBXdSVWlpKzETEISfWhQxPpuXQ8WROrbxP+Srr60Z
        kyzkeW4NTTc6qtq881L2+7Pnvdl4Vv0xyhJqWISpZJMKefEtU88Narqfr7rLkXbD6Q5F+JQQGY0pJ
        XbAEDhhghNzbs2QYjo/n47krnQvH74pVXzDlq+/KX5SC+m+sCCXIw3TVoz5pIInfhy5Dx1r6XBM8K
        VayGLBIw==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:43018 helo=rmk-PC.armlinux.org.uk)
        by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1jxtRe-0004R9-FJ; Tue, 21 Jul 2020 15:40:38 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1jxtRe-0003Tn-8Z; Tue, 21 Jul 2020 15:40:38 +0100
In-Reply-To: <20200721143756.GT1605@shell.armlinux.org.uk>
References: <20200721143756.GT1605@shell.armlinux.org.uk>
From:   Russell King <rmk+kernel@armlinux.org.uk>
To:     Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Vinod Koul <vkoul@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        "David S. Miller" <davem@davemloft.net>
Subject: [PATCH v2 2/3] ARM: dts: armada-38x: fix NETA lockup when repeatedly
 switching speeds
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="utf-8"
Message-Id: <E1jxtRe-0003Tn-8Z@rmk-PC.armlinux.org.uk>
Date:   Tue, 21 Jul 2020 15:40:38 +0100
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To support the change in "phy: armada-38x: fix NETA lockup when
repeatedly switching speeds" we need to update the DT with the
additional register.

Fixes: 14dc100b4411 ("phy: armada38x: add common phy support")
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/boot/dts/armada-38x.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/armada-38x.dtsi b/arch/arm/boot/dts/armada-38x.dtsi
index e038abc0c6b4..420ae26e846b 100644
--- a/arch/arm/boot/dts/armada-38x.dtsi
+++ b/arch/arm/boot/dts/armada-38x.dtsi
@@ -344,7 +344,8 @@
 
 			comphy: phy@18300 {
 				compatible = "marvell,armada-380-comphy";
-				reg = <0x18300 0x100>;
+				reg-names = "comphy", "conf";
+				reg = <0x18300 0x100>, <0x18460 4>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 
-- 
2.20.1

