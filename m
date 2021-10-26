Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8415C43AF23
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 11:34:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232689AbhJZJgz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 05:36:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230226AbhJZJgz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 05:36:55 -0400
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6914C061745
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 02:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
        Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
        :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
        Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=pmCj+1wqLEqg03ltxUlTwba/P+985zGgJjlhaUJxYNA=; b=fFKcYDFiulkqxQQgsMN5LFZW4B
        VNwX6bbY7yMrDu2SopDb6vbo0bV9a2wwC1vLmMhGoayhJp3PLWWhOktU/4cXsb7sohR5fa/DAULX4
        zZOTYIRwMwTIbRCroCaDEKxG77oV0F1/ps0AHpB3RQtDT2ALzAAiqhrArRCnKxIzZ1sExenpdEXvV
        aVGwT51IWTdw6rzhznHuOAc8vpkxTiirHuVM5EUPHAFSIYC2NHhRE+2b5+O5x61bPPlP+WG7/dzf3
        1UiQvtqHlpT67RL67Q9kFNvg7qZ5Lys76OAxyujTstdgbKb0dH/XCBpp9+8diT2fC5HWGgP1oZzE8
        da2+vgoQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:52994 helo=rmk-PC.armlinux.org.uk)
        by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1mfIqe-00059z-By; Tue, 26 Oct 2021 10:34:24 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.94.2)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1mfIqd-001K4C-RP; Tue, 26 Oct 2021 10:34:23 +0100
From:   "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
To:     Shawn Guo <shawnguo@kernel.org>, Andrew Lunn <andrew@lunn.ch>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Stefan Agner <stefan@agner.ch>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: vf610-zii-dev-rev-b: specify phy-mode for external
 PHYs
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="utf-8"
Message-Id: <E1mfIqd-001K4C-RP@rmk-PC.armlinux.org.uk>
Sender: Russell King <rmk@armlinux.org.uk>
Date:   Tue, 26 Oct 2021 10:34:23 +0100
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Specify the phy-mode for the external PHYs on the third switch on the
ZII development rev B board so phylink and phylib knows what mode these
interfaces are configured for.

Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
---
 arch/arm/boot/dts/vf610-zii-dev-rev-b.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts b/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
index 9034d99cee97..65e54dcd46b2 100644
--- a/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
+++ b/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
@@ -211,12 +211,14 @@ port@0 {
 						reg = <0>;
 						label = "lan6";
 						phy-handle = <&switch2phy0>;
+						phy-mode = "sgmii";
 					};
 
 					port@1 {
 						reg = <1>;
 						label = "lan7";
 						phy-handle = <&switch2phy1>;
+						phy-mode = "sgmii";
 					};
 
 					port@2 {
-- 
2.30.2

