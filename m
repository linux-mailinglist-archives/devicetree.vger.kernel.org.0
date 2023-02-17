Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34D6269B301
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 20:25:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229436AbjBQTZK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 14:25:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229570AbjBQTZJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 14:25:09 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9491453ECD
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 11:25:08 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 645A485A77;
        Fri, 17 Feb 2023 20:25:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1676661906;
        bh=x7fuwhUKjB5vUIj3mnUCvV0X01Ki32U/RAFxUcx9Wek=;
        h=From:To:Cc:Subject:Date:From;
        b=MyPsXPxKo8WI8IkpyBbN68NN6aDQZbREzMqm1CNUyoGaqihnyNQBNy6V1n+NxItUJ
         Atx08XQLqZ0UFnWxhUf8nAzBo5+/VYYv4qLja3utBmGJolXQeHPfjw8OMH7ReHHMU1
         M3ZlCzBOJKyl7JHoAzSSrCZbGCOgsEGbNsnEuk22v7TlJvJGoFNTKfvm3EPipCnhyi
         TjIzQ1iZ20jgloHcuQr15kB8yt094qaaRBnObztp0RL2RNnzbQHsFtubLM7FBIBUOy
         509GQBQL1M8wVPgQ0b2NWvGkLZJaX5+UnZ9FGcckXrzzcUfDw3/FjttX6coAsojghx
         w+q8VF+tN00ig==
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
Subject: [PATCH] arm64: dts: imx8mp: Add PCIe support to DH electronics i.MX8M Plus DHCOM and PDK2
Date:   Fri, 17 Feb 2023 20:24:44 +0100
Message-Id: <20230217192444.61680-1-marex@denx.de>
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

Add PCIe support for DH electronics i.MX8M Plus DHCOM SoM on PDK2 carrier board.

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
 .../arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
index 382fbedaf6ba4..fdf18b7f208d5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
@@ -151,6 +151,20 @@ &flexcan1 {
 	status = "okay";
 };
 
+&pcie_phy {
+	clock-names = "ref";
+	clocks = <&clk IMX8MP_SYS_PLL2_100M>;
+	fsl,clkreq-unsupported;
+	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_UNUSED>;
+	status = "okay";
+};
+
+&pcie {
+	fsl,max-link-speed = <1>;
+	reset-gpio = <&gpio1 6 GPIO_ACTIVE_LOW>;	/* GPIO J */
+	status = "okay";
+};
+
 &usb3_1 {
 	fsl,over-current-active-low;
 };
-- 
2.39.1

