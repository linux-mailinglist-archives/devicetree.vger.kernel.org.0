Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF9B569B303
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 20:27:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229585AbjBQT1B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 14:27:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229570AbjBQT1A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 14:27:00 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB9EB53EE4
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 11:26:59 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 2C24385C9A;
        Fri, 17 Feb 2023 20:26:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1676662018;
        bh=snLcNF7iu3F98nh8yhcHySRnQg6q/0+6ap9NPdd+SRk=;
        h=From:To:Cc:Subject:Date:From;
        b=iupCaL3JKOAgVezDUCNPLUR9Q2HynKaND77yrogUxDody+LzD+3gttH4O3DUzErU0
         jVEtWpjfONQUji+MuOVGNoDezimeM+wMRB65v4TUclqZ/jdySdmHmez8Uq5FYtRH+T
         ikJeerl7JVyy+ZaAWGQp4pT/mI6kIfxOd0zMXhLVsh1EzzIoCbVrSCmmbvgzgbtvVg
         SdaJI4toe+8GY5rXnjraDi+T0Xa+ic2xKHjDfrlIueSHVNM+wi0T1N6oF5B6/N1ZD6
         AIoet81wnnFezDhxkD3F4nJ32eVzx/N8QolTDGiT0bA4OVMLi+DPmbqql/X5F25H4V
         4EJKeMnW1qcZw==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        kernel@dh-electronics.com
Subject: [PATCH 1/5] arm64: dts: imx8mp: Do not delete PHY nodes on i.MX8MP DHCOM PDK2
Date:   Fri, 17 Feb 2023 20:26:43 +0100
Message-Id: <20230217192647.61733-1-marex@denx.de>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PHY nodes may be activated via DTO in case another SoM variant
is populated into the development kit. Do not delete the nodes.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Marek Vasut <marex@denx.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
index b657ac6adddbe..1cbf49ec138b9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
@@ -104,18 +104,6 @@ led-3 {
 	};
 };
 
-/*
- * PDK2 carrier board uses SoM with KSZ9131 populated and connected to
- * SoM EQoS ethernet RGMII interface. Remove the other SoM PHY DT node.
- */
-/delete-node/ &ethphy0f;
-
-/*
- * PDK2 carrier board has KSZ9021 PHY populated and connected to SoM FEC
- * ethernet RGMII interface. The SoM is not populated with second FEC PHY.
- */
-/delete-node/ &ethphy1f;
-
 &fec {	/* Second ethernet */
 	phy-handle = <&ethphypdk>;
 
-- 
2.39.1

