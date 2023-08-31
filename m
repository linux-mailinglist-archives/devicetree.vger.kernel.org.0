Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D4F778F275
	for <lists+devicetree@lfdr.de>; Thu, 31 Aug 2023 20:20:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346951AbjHaSUx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Aug 2023 14:20:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346957AbjHaSUw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Aug 2023 14:20:52 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9310710DA
        for <devicetree@vger.kernel.org>; Thu, 31 Aug 2023 11:20:38 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id D412C865A5;
        Thu, 31 Aug 2023 20:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1693506037;
        bh=Cfe9oOv/aXwc1jh9u8be+fZ6sdxtu/GHzcGUlajhs+o=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=xWtreuPOvr6wxiBzi0gjrgpPmiznxV2czPmoKG6x1IAU4Qq04tgjeLFYxe4Wd1l6a
         BMZPOK63gFFdFtXOwT7qF8JAwARBR0uNglnrWR1sM7rVyaSeMchlXIHsMSwya5JGWq
         3hNhrnv0UTf6wXC7CfDmGQXPDVJAS7u+vVkKFhPfOhM445hPBLwKWHoD7V6KxSbDBk
         KOMORIgcHJsK2GGGeanOiZtP5YZIDIz8sIoqc3tn9j8fL2T5uR4qQ6rNKHru2Vf8jm
         bS5PXgkvnZfUzvdZ4No02Lepfb2IwAKeYIUj4TY9SWs9+STwiRiacg14GLahTwz+Dh
         2QAAAPWPmB7dA==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Magnus Damm <magnus.damm@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 4/4] arm64: dts: imx8mp: Add UART1 and RTC wake up source on DH i.MX8M Plus DHCOM SoM
Date:   Thu, 31 Aug 2023 20:20:20 +0200
Message-Id: <20230831182020.154863-4-marex@denx.de>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230831182020.154863-1-marex@denx.de>
References: <20230831182020.154863-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Turn Console UART1 and dedicated RTC into wake up sources, to make
it possible to wake on UART and RTC alarm.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Magnus Damm <magnus.damm@gmail.com>
Cc: Marek Vasut <marex@denx.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
index df43741d04bb9..4582a0bbe3726 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
@@ -414,6 +414,7 @@ rv3032: rtc@51 {
 		interrupts-extended = <&gpio5 5 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_rtc>;
+		wakeup-source;
 	};
 
 	eeprom1: eeprom@53 {	/* EEPROM with FEC MAC address */
@@ -470,6 +471,7 @@ &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart1>;
 	status = "okay";
+	wakeup-source;
 };
 
 &uart2 {
-- 
2.40.1

