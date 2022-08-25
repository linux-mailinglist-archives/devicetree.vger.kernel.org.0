Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 988375A05A3
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 03:33:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232020AbiHYBd3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 21:33:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbiHYBd2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 21:33:28 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 697E58B9BC
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 18:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:From:Sender:Reply-To:Subject:Date:
        Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=FRl4T2OQ+7BPr3GrJrzZXHXIFLiWvfxWuCOSm8LR9yg=; b=ZV5WYZmLh8V7gtEHJQfvTRZdfe
        i5hDQJ+vJOgfXnXo7JKp9ODDLQpZHZ/1Dk5GmLlooCZMeHEmWj8/B7Meg3fsPerJ7vveEpWf2hzHt
        vZ1xwGpUi2D5l6EKWGWlxIf6NCaCZNzlLoJLLYOLcDx0FgdWAYyJgVV7Bu5GKBFRh1GU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oR1kH-00EW2v-KK; Thu, 25 Aug 2022 03:33:21 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Gregory Clement <gregory.clement@bootlin.com>
Cc:     arm-soc <arm@kernel.org>, Device Tree <devicetree@vger.kernel.org>,
        Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH v2 07/12] arm: DT: kirkwood/orion5: Rename watchdog node
Date:   Thu, 25 Aug 2022 03:32:53 +0200
Message-Id: <20220825013258.3459714-8-andrew@lunn.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220825013258.3459714-1-andrew@lunn.ch>
References: <20220825013258.3459714-1-andrew@lunn.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The watchdog.yaml requires the node be called watchdog. So change
from the current wdt/watchdog-timer.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 arch/arm/boot/dts/kirkwood.dtsi | 2 +-
 arch/arm/boot/dts/orion5x.dtsi  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/kirkwood.dtsi b/arch/arm/boot/dts/kirkwood.dtsi
index fca31a5d5ac7..362d2a6fbb54 100644
--- a/arch/arm/boot/dts/kirkwood.dtsi
+++ b/arch/arm/boot/dts/kirkwood.dtsi
@@ -243,7 +243,7 @@ timer: timer@20300 {
 			clocks = <&core_clk 0>;
 		};
 
-		wdt: watchdog-timer@20300 {
+		wdt: watchdog@20300 {
 			compatible = "marvell,orion-wdt";
 			reg = <0x20300 0x28>, <0x20108 0x4>;
 			interrupt-parent = <&bridge_intc>;
diff --git a/arch/arm/boot/dts/orion5x.dtsi b/arch/arm/boot/dts/orion5x.dtsi
index 2d41f5c166ee..7de95818663e 100644
--- a/arch/arm/boot/dts/orion5x.dtsi
+++ b/arch/arm/boot/dts/orion5x.dtsi
@@ -137,7 +137,7 @@ timer: timer@20300 {
 				clocks = <&core_clk 0>;
 			};
 
-			wdt: wdt@20300 {
+			wdt: watchdog@20300 {
 				compatible = "marvell,orion-wdt";
 				reg = <0x20300 0x28>, <0x20108 0x4>;
 				interrupt-parent = <&bridge_intc>;
-- 
2.37.2

