Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9AB96A3F9E
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 11:43:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229773AbjB0Knd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 05:43:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229752AbjB0Knd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 05:43:33 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52E6E1FCA
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 02:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1677494611; x=1709030611;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=EWyHnGM46OIwP+alOvtsE4wkppBdCmEu2QNRM12E4Qs=;
  b=bglYeDREwkcAGzKc2TyUH3aKGNPfDPS/rXDvEtu0o0zkqZ5ZxtXxfOxo
   AY0iLbUZ2/NY+xQm+8AfgB+81zp8djhTsTyoH8iiOmDnvM46VwEwvQ8N5
   qhSBQYFBsjNxF1+ZqFa+ZdLrcw6oIokuIpyYVOEsSPLzEbqMJLAsql9Ea
   tKJAEj2T6mFhYt9lhSGYnoZHNZmhC1flSxMa/TdvPHFmCkW0faLiJAHn8
   kFTzv4T5kz2mjC+Dn3JN/XEZj/BkDASgwh+9ge2NhnqJ+Zi0zzazi1hlR
   UOMN8/Ay7Dqkc3du/A2Ez4qYzwecYQNtutmQWbJsahEbk+Ywj/GC/zuU0
   g==;
X-IronPort-AV: E=Sophos;i="5.97,331,1669071600"; 
   d="scan'208";a="29331746"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 27 Feb 2023 11:43:28 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 27 Feb 2023 11:43:28 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 27 Feb 2023 11:43:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1677494608; x=1709030608;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=EWyHnGM46OIwP+alOvtsE4wkppBdCmEu2QNRM12E4Qs=;
  b=Ijzrcjv1cIavrHAm31FxWdS5BZ/J3Ebe5c6Yb6v5kiiRllMKIPN+zWPJ
   jRGAdGkcSb3sihKPjiBSBFccxhquPWlVOB9MIQa9AHaySeJWzJdI3qFGf
   LUqOeit0vi2b0lNZdTZQWNu/mZTANbtZXS7dw5BK8lXZO2a/rp7Wa1FFP
   DRtYTTuoiWrIiUh5v7J87C3aQ9vFMmjNUQ6SUJUr8Qm9fAzKAxmZEzGbK
   EZ7pOSkNBPLs2pIPAuI9TYOLIYboX5WkfJr45RWSVTc+moT1Nvyu4IQH8
   M4aPaN8Cy560KlEVDudrJ8zCIVth9KhPO8CR/gWbYuz1Uh16E+DaXTbci
   A==;
X-IronPort-AV: E=Sophos;i="5.97,331,1669071600"; 
   d="scan'208";a="29331745"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 27 Feb 2023 11:43:28 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 415D0280056;
        Mon, 27 Feb 2023 11:43:28 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: imx93: Add FlexSPI support
Date:   Mon, 27 Feb 2023 11:43:23 +0100
Message-Id: <20230227104324.249343-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add FlexSPI node for i.MX93.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
This is mainly taken from the downstream kernel with the clock order
fixed and 'nxp,imx93-fspi' compatible removed.
I do not know if it makes sense to add an imx93 specific compatible or
not. imx8mn uses imx8mm only, but imx8mp has it's own. But the latter
uses the same device data in the driver.

 arch/arm64/boot/dts/freescale/imx93.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
index 3c3d3d570d8c..1d71ca8d1f5a 100644
--- a/arch/arm64/boot/dts/freescale/imx93.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
@@ -458,6 +458,21 @@ flexcan2: can@425b0000 {
 				status = "disabled";
 			};
 
+			flexspi1: spi@425e0000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "nxp,imx8mm-fspi";
+				reg = <0x425e0000 0x10000>, <0x28000000 0x10000000>;
+				reg-names = "fspi_base", "fspi_mmap";
+				interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX93_CLK_FLEXSPI1_GATE>,
+					 <&clk IMX93_CLK_FLEXSPI1_GATE>;
+				clock-names = "fspi_en", "fspi";
+				assigned-clocks = <&clk IMX93_CLK_FLEXSPI1>;
+				assigned-clock-parents = <&clk IMX93_CLK_SYS_PLL_PFD1>;
+				status = "disabled";
+			};
+
 			lpuart7: serial@42690000 {
 				compatible = "fsl,imx93-lpuart", "fsl,imx7ulp-lpuart";
 				reg = <0x42690000 0x1000>;
-- 
2.34.1

