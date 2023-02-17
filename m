Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22F7569B304
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 20:27:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229606AbjBQT1C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 14:27:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229570AbjBQT1C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 14:27:02 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5887953EED
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 11:27:01 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C040585C9D;
        Fri, 17 Feb 2023 20:26:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1676662019;
        bh=VcTxfTtsLh3i5/D1ayDyZbTLvzGbRdB7CbgB1sAfGaY=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=xpmB0gR2nKS27IdhiG1ObhwHoSWMANCguQ7azJYHUxIN1K/cx+QrarsSGOAv5zM8Q
         sfjc7BuYJwjjmyIuhJmmBribe+eziEI/05pVSTw+k7JvrC9Hr/AvnIowTMIny1oS70
         nKfcXmEQeGR5N1sXDmGU9PzKqxIFQXXmPdV45EOQhudsh090Zl0TI9RgFbh5xzDAGP
         PMzl+/UnXSVpQ9JeAaQQGxomAyV22sseeLXtPp0e1q6eWV0unTE+8mC10MmN6WHQYj
         oXwSd4LfjMTZhsUM/z+dD5IcCL8Naof0w5KTDT5v0WxmIb1qGzdG5LDGLjAT5+lEuP
         beF7ONVGXB2TQ==
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
Subject: [PATCH 2/5] arm64: dts: imx8mp: Adjust EQoS reset comment on i.MX8MP DHCOM
Date:   Fri, 17 Feb 2023 20:26:44 +0100
Message-Id: <20230217192647.61733-2-marex@denx.de>
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

Fix copy-paste error in the EQoS reset comment, align with SoM schematic.
No functional change.

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
index cc8e086ff7b63..1471a17045f7a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
@@ -700,9 +700,9 @@ MX8MP_IOMUXC_SD1_RESET_B__GPIO2_IO10		0x22
 
 	pinctrl_ethphy0: dhcom-ethphy0-grp {
 		fsl,pins = <
-			/* ENET1_#RST Reset */
+			/* ENET_QOS_#RST Reset */
 			MX8MP_IOMUXC_SAI5_RXC__GPIO3_IO20		0x22
-			/* ENET1_#INT Interrupt */
+			/* ENET_QOS_#INT Interrupt */
 			MX8MP_IOMUXC_SAI5_RXFS__GPIO3_IO19		0x22
 		>;
 	};
-- 
2.39.1

