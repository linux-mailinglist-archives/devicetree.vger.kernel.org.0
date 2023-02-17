Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6B9969B305
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 20:27:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229640AbjBQT1D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 14:27:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbjBQT1D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 14:27:03 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D1AD53EE4
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 11:27:02 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 5D94E85C9E;
        Fri, 17 Feb 2023 20:26:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1676662019;
        bh=fEDWiRV6CJDBPckrEEyixrdZDM3TmfRiCv22cPX3Nb8=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=eIV0bUOm5ckBlL1nwA15jrfFCx0x1aIoWmaYv3ANA79qQ6Y3EBrNiSnCZWxZeIHwI
         3sao3XohvR6zlZaiQv4midJqr4X5KKRHpSE7b1L9XZqbKBAgmqvYSQuPVdacBwyMjl
         il7UbXjarpbJl8b7N6bc/zEmKqjZeN93BmYXR8No8d362r7m02eVPuDeNLq7lBN+WS
         ndjj2ed6NuLpAq4xfc/Rvdg1N4iymkPFCbdUZRuYG5vFxI7cPaC/Xy8RFCo8LcWEw7
         1wbpemYRoa4uglKj19ZYwWKTclvcaADsC1wdtU7rK+W+j7iI01Kc/wqswFUyW2lzGT
         e1xQ9GK0PLEJw==
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
Subject: [PATCH 3/5] arm64: dts: imx8mp: Adjust EQoS PHY address on i.MX8MP DHCOM
Date:   Fri, 17 Feb 2023 20:26:45 +0100
Message-Id: <20230217192647.61733-3-marex@denx.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230217192647.61733-1-marex@denx.de>
References: <20230217192647.61733-1-marex@denx.de>
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

The current variant of the SoM has LAN8740Ai PHY connected to EQoS
strapped to MDIO address 0 , adjust the MDIO address to match the
hardware.

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
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
index 1471a17045f7a..d34020e83bbde 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
@@ -94,14 +94,14 @@ mdio {
 		#size-cells = <0>;
 
 		/* Up to one of these two PHYs may be populated. */
-		ethphy0f: ethernet-phy@1 { /* SMSC LAN8740Ai */
+		ethphy0f: ethernet-phy@0 { /* SMSC LAN8740Ai */
 			compatible = "ethernet-phy-id0007.c110",
 				     "ethernet-phy-ieee802.3-c22";
 			interrupt-parent = <&gpio3>;
 			interrupts = <19 IRQ_TYPE_LEVEL_LOW>;
 			pinctrl-0 = <&pinctrl_ethphy0>;
 			pinctrl-names = "default";
-			reg = <1>;
+			reg = <0>;
 			reset-assert-us = <1000>;
 			reset-deassert-us = <1000>;
 			reset-gpios = <&gpio3 20 GPIO_ACTIVE_LOW>;
-- 
2.39.1

