Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3799434F57
	for <lists+devicetree@lfdr.de>; Wed, 20 Oct 2021 17:50:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230229AbhJTPwr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Oct 2021 11:52:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230265AbhJTPwr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Oct 2021 11:52:47 -0400
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72CB4C06161C
        for <devicetree@vger.kernel.org>; Wed, 20 Oct 2021 08:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
        Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
        :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
        Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=3pYELVi8mnsWebFYNcRganbAvyKdP5iaaTrkwBFv1pQ=; b=tLjX5t/g5WG9uQs4zabhm3mU3+
        hG/ktlbYDwd+f2GPvzCivqymp2f+/YjGyAzcSkb/8DK5cbIdYzm53mTY85aiAU7Y6YuY+wEX3iP9B
        9FSkw8Wg9ed7VEs4Ga3uQvtjUueUAV43EBWyx60InsPIiI9UH7vw5WU8HXoQXW/OkZIYQvRO+bOTe
        MewLi+D3wdBhHRNWoHEwY8vtBhfwooASKBz8Nogac9awL3mBVYb++QeRO1vhrBjSswy9+1Z+7xzjQ
        uTExz5FoGtwSEvg7rPq1HAiaD6CjpSth55UgdCB0yOQqD1faaUe0o3ThR6QeFJ9S6DauMwpHzQKKR
        iXaIabgA==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:41706 helo=rmk-PC.armlinux.org.uk)
        by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1mdDr4-0007uT-9Q; Wed, 20 Oct 2021 16:50:14 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.94.2)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1mdDr3-006f6l-QZ; Wed, 20 Oct 2021 16:50:13 +0100
From:   "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
To:     Shawn Guo <shawnguo@kernel.org>, Andrew Lunn <andrew@lunn.ch>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Stefan Agner <stefan@agner.ch>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: vf610-zii-dev-rev-b: correct phy-mode for 6185 dsa
 link
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="utf-8"
Message-Id: <E1mdDr3-006f6l-QZ@rmk-PC.armlinux.org.uk>
Sender: Russell King <rmk@armlinux.org.uk>
Date:   Wed, 20 Oct 2021 16:50:13 +0100
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DT currently lists the port mode for the 88E6352 switch 1 to 88E6185
switch 2 as "rgmii-id" but referring to the schematics, it is in fact
a serdes link. The 88E6352 is configured with P5_MODE=6, S_SEL=1 and
S_MODE=1, which means port 5 is configured as 1000BASE-X.

This is confirmed by the value in the 88E6352 port 5 status register,
0x4e09, where C_MODE=9 meaning 1000BASE-X. It is also confirmed by
the 88E6185 port 9 status register, 0x5e8c, where C_MODE=4 meaning
cross-chip SERDES mode is selected.

Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
---
 arch/arm/boot/dts/vf610-zii-dev-rev-b.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts b/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
index 39be99b3cf0d..a71316cdae02 100644
--- a/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
+++ b/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
@@ -155,7 +155,7 @@ switch1port5: port@5 {
 						reg = <5>;
 						label = "dsa";
 						link = <&switch2port9>;
-						phy-mode = "rgmii-txid";
+						phy-mode = "1000base-x";
 
 						fixed-link {
 							speed = <1000>;
@@ -242,7 +242,7 @@ port@4 {
 					switch2port9: port@9 {
 						reg = <9>;
 						label = "dsa";
-						phy-mode = "rgmii-txid";
+						phy-mode = "1000base-x";
 						link = <&switch1port5
 							&switch0port5>;
 
-- 
2.30.2

