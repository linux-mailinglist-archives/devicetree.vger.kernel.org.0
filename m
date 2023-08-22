Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D64478371C
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 02:50:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231948AbjHVAum (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Aug 2023 20:50:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231929AbjHVAul (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Aug 2023 20:50:41 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8AEAA8
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 17:50:38 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 03BC486C24;
        Tue, 22 Aug 2023 02:50:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1692665426;
        bh=Z29fGfqaTV11eHQ+i5qjiCxl8fw5AkGgautzGlpy+/8=;
        h=From:To:Cc:Subject:Date:From;
        b=uLR9SRkr+Y8RYpAsog/0C7IpmtXZ+Vtr9WvPE1Os1RRF+AOQ1ueAp98+HV+DS+tOp
         ho5s1AKIwGS+mYFK57KqYAKNFgjRdKwympZeoolEFjMrNz0VjaNUFRa1N5rZ1lwDIS
         3zOGSZItVm0dGK1EwkWwy50rzNFgWOkC7qHGTGneL0ou3QKau8QFoR0MKvg138BzZF
         j7uEc1GqnlOSYlkOWY0nHJHzCWikbJ1YwH8bvK5UBuC/tRTqbOfFOp0OMJOVUlmFMN
         x61TjQVK5sAUdDfFHcXEkzDwinerb6smh+Q0/9zY30dl2jmDNTyCWGXIWjQ2uccB4r
         inTKKt2mQnx5g==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mp: Switch PCIe to HSIO PLL on i.MX8MP DHCOM PDK2 and generate clock from SoC
Date:   Tue, 22 Aug 2023 02:50:07 +0200
Message-Id: <20230822005007.128571-1-marex@denx.de>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PDK2 carrier board had to be manually patched to obtain working PCIe
with the i.MX8MP DHCOM SoM so far, because the PCIe clock generator has
not been connected to the PCIe block REF_PAD_CLK inputs.

Switch to use of HSIO PLL as the clock source for the PCIe block instead,
and use the REF_PAD_CLK as outputs to generate PCIe clock from the SoC.
This way, it is not necessary to patch the PDK2 in any way to obtain a
working PCIe.

Note that PDK3 has PCIe clock generator always connected to REF_PAD_CLK
and is not affected.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Marek Vasut <marex@denx.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
index e9fb5f7f39b50..3b1c940860e02 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
@@ -186,9 +186,9 @@ &flexcan1 {
 
 &pcie_phy {
 	clock-names = "ref";
-	clocks = <&clk IMX8MP_SYS_PLL2_100M>;
+	clocks = <&hsio_blk_ctrl>;
 	fsl,clkreq-unsupported;
-	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_UNUSED>;
+	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_OUTPUT>;
 	status = "okay";
 };
 
-- 
2.40.1

