Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A22451095F
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 21:59:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353018AbiDZUCr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 16:02:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350224AbiDZUCr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 16:02:47 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26FFF7E5AC
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 12:59:39 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.net.upcbroadband.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 74EEE83D9C;
        Tue, 26 Apr 2022 21:59:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1651003177;
        bh=jxGxnnxrfONYS1XSxvG0YskLttoR7zlnu6KRTS0Dpu0=;
        h=From:To:Cc:Subject:Date:From;
        b=za8E8wxYE3Z5hggA0pt2Ed/nNY8cp48EfV1FjxSprSwsfFxMaE6o7BT0gGt6ip64A
         4aBxIXxOIlCl/i/NpMcINGyxhNjnsG0pRdlq1DvjNMXxaY0ni1XVt4S2+NTk86sHH+
         qRjLD7LSJIeANUZ8dNulWXb292lZTGIxwFJn58gNFCEGj0lhLu/RkX3Wu07XcDWwjO
         kkrZs8jMNO+9CYSlsue572vXisnUtEujq2zCOB/Ui/FkplCN0zS8BBmlt5s1c+GqRb
         cN1eS9AOqxFd2lMX1AkNWLyQIzpTFpeSQRcolAY9NVqZ0ZU8q24/HzsLHpFspMVKP7
         hpcNa5OKCP1jg==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mm: Add CPLD on MX8Menlo board
Date:   Tue, 26 Apr 2022 21:59:01 +0200
Message-Id: <20220426195901.252611-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The CPLD on MX8Menlo board is used to operate custom hardware,
the CPLD content is compatible with previous M53Menlo CPLD,
add the bindings.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Fabio Estevam <festevam@denx.de>
Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
NOTE: Depends on
      https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/commit/?h=for-next&id=b61b76dfef30945f175d4acfecb9beb862174f01
---
 arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts b/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts
index c20db0c550da..92eaf4ef4563 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts
@@ -71,7 +71,20 @@ canfd: can@0 {
 &ecspi2 {
 	pinctrl-0 = <&pinctrl_ecspi2 &pinctrl_gpio1>;
 	cs-gpios = <&gpio5 13 GPIO_ACTIVE_LOW>, <&gpio3 4 GPIO_ACTIVE_LOW>;
-	status = "disabled";
+	status = "okay";
+
+	spidev@0 {
+		compatible = "menlo,m53cpld";
+		reg = <0>;
+		spi-max-frequency = <25000000>;
+	};
+
+	spidev@1 {
+		compatible = "menlo,m53cpld";
+		reg = <1>;
+		spi-max-frequency = <25000000>;
+	};
+
 };
 
 &ethphy0 {
-- 
2.35.1

