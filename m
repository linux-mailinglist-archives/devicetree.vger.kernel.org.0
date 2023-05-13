Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 960BC70161D
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 12:21:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233374AbjEMKVc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 May 2023 06:21:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229653AbjEMKVb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 May 2023 06:21:31 -0400
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96DE93AAE
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 03:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
        Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
        :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
        Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=r4FKpG6h8Ccm2WtNhuX+D2RRGyGAFCrIdmqI/o6ZimE=; b=1KeeLNZCdJOSqlLoQPLQS0/Mj3
        8ovb1q6Co9WjdYGbABWcgvKFLluH6S/QxhRyEzXCMVYb3YcAj3Z2qQ9jI5T5MZhi5gWb6p1FhEGL5
        ECuw8jVH4IygoHlV7QGUr/fgT8uv3Dvxzrs9w7ssMEGPTOKe5X+fKBCJeD1YwQymEjbXvPlmazxtr
        yNPMNUYSdjwWLRbP6ES9X1N/kF+ly5J1mIJllbyX/eB1fRLl2ptw6ZTRJHiAGUB6OPueRnIX+5BGx
        xLvvKLvkbKa70mynxfiD3VjRQXb3uSEcB8lLpWTiKTLnKGKiWwWkDzH5LWrhTbLoLrDSZZZj8Q07A
        C3u87KyA==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:49806 helo=rmk-PC.armlinux.org.uk)
        by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1pxmNR-0001E8-8O; Sat, 13 May 2023 11:21:25 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.94.2)
        (envelope-from <rmk@rmk-PC.armlinux.org.uk>)
        id 1pxmNQ-0034DX-Jo; Sat, 13 May 2023 11:21:24 +0100
From:   "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
To:     Gregory Clement <gregory.clement@bootlin.com>,
        Andrew Lunn <andrew@lunn.ch>
Cc:     Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: armada388-clearfog: add missing phy-modes
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="utf-8"
Message-Id: <E1pxmNQ-0034DX-Jo@rmk-PC.armlinux.org.uk>
Sender: Russell King <rmk@armlinux.org.uk>
Date:   Sat, 13 May 2023 11:21:24 +0100
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DSA framework has got more picky about always having a phy-mode,
particularly for the CPU port. Add the missing phy-mode properties
for every port which does not have an integrated PHY.

Add a phy-mode property to the ethernet interface facing the switch
as this was configured using SGMII - as the switch is actually
using 1000base-x, let's have some consistency between the two link
partners.

Additionally, the cpu label has never actually been used in the
binding, so remove it.

Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
---
This continues on with Andrew's patch set from April, fixing up
SolidRun's Armada-388 based Clearfog board with a 88e6176 switch.

 arch/arm/boot/dts/armada-388-clearfog.dts | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/armada-388-clearfog.dts b/arch/arm/boot/dts/armada-388-clearfog.dts
index 95299167dcf5..32c569df142f 100644
--- a/arch/arm/boot/dts/armada-388-clearfog.dts
+++ b/arch/arm/boot/dts/armada-388-clearfog.dts
@@ -47,6 +47,8 @@ button-0 {
 
 &eth1 {
 	/* ethernet@30000 */
+	phy-mode = "1000base-x";
+
 	fixed-link {
 		speed = <1000>;
 		full-duplex;
@@ -129,8 +131,9 @@ port@4 {
 
 			port@5 {
 				reg = <5>;
-				label = "cpu";
 				ethernet = <&eth1>;
+				phy-mode = "1000base-x";
+
 				fixed-link {
 					speed = <1000>;
 					full-duplex;
@@ -141,6 +144,8 @@ port@6 {
 				/* 88E1512 external phy */
 				reg = <6>;
 				label = "lan6";
+				phy-mode = "rgmii-id";
+
 				fixed-link {
 					speed = <1000>;
 					full-duplex;
-- 
2.30.2

