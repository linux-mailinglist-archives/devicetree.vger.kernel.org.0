Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CE69520D48
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 07:46:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231151AbiEJFuU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 01:50:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbiEJFuT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 01:50:19 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F4964C417
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 22:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1652161581; x=1683697581;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=1dvaSBK4nCvk1E14r7yHVwjYZUrsU7FupqvfUkqnX3Q=;
  b=PX9Q1UwDMW0lFrqoWmTl8EtqvaQETb431L54QUR6UbaH45aTPlI41XP5
   FyNfjAO134gY2PgWrxunWAEQLqHktE5eW6dCZnc8O9uqTQZmh6Ew65nf0
   sT2dqwx4JbnnONEG3+3Kw3F3m0TwKfD4Pw6TANmp6nmngTP36kMELCpR3
   u/3AHVm1jEe72uQ/hbYio4yHUov5c1iydQYce6bapbG4xSORrxAJSA4hn
   sh3mghW0sB3Ef5O0vhRmJ1wVM4X51NyztIC5Sa2ns8zuclEfLnAX335HO
   mRnHoqRuTLXEIIXzOyzZzX8TZeJUs4lRTlJfQ4GXetWr+kz51HdNk6CAd
   Q==;
X-IronPort-AV: E=Sophos;i="5.91,213,1647298800"; 
   d="scan'208";a="23767313"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 10 May 2022 07:46:19 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 10 May 2022 07:46:19 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 10 May 2022 07:46:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1652161579; x=1683697579;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=1dvaSBK4nCvk1E14r7yHVwjYZUrsU7FupqvfUkqnX3Q=;
  b=IF87Kon6ekcWsJk0xQz66sGC5v2KKImoMkS3jTfTTVoLYFkf/6tLRR5v
   LAR52I3QlhotbQCp9RmmAekHglCUiAWr/5rqODhPY/gWkC39X4pizEcQ5
   4FOuF4t6n6gOPZUB9tjeZRQxhXBANGEROEnF2y6K5Y0Ajnz1U1F8hPWdY
   OMhVFKmkRkDwh6s+VSow8s95+WxFO37QVRS/3M31afas23NRLlttMrrA1
   R9hr5NxYwa4aE4M85SzSJ7CaMMP/chgEfRqpnpQnyuVrHYoiSaJrYfipd
   598CMzrqEQmagWwZmGbf0FngnbzvehwdICF7WfiG2Finwibatc6p1bYp2
   A==;
X-IronPort-AV: E=Sophos;i="5.91,213,1647298800"; 
   d="scan'208";a="23767312"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 10 May 2022 07:46:19 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 57A43280070;
        Tue, 10 May 2022 07:46:19 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Jun Li <jun.li@nxp.com>
Subject: [PATCH v2 1/1] ARM: dts: imx7: Move hsic_phy power domain to HSIC PHY node
Date:   Tue, 10 May 2022 07:46:12 +0200
Message-Id: <20220510054612.2389595-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move the power domain to its actual user. This keeps the power domain
enabled even when the USB host is runtime suspended. This is necessary
to detect any downstream events, like device attach.

Fixes: 02f8eb40ef7b ("ARM: dts: imx7s: Add power domain for imx7d HSIC")
Suggested-by: Jun Li <jun.li@nxp.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
This patch superseeds the initial patch from [1].

[1] https://lore.kernel.org/linux-arm-kernel/5566202.DvuYhMxLoT@steina-w/T/

Changes in v2:
* Added Fixes tag

 arch/arm/boot/dts/imx7s.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index 008e3da460f1..039eed79d2e7 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -120,6 +120,7 @@ usbphynop3: usbphynop3 {
 		compatible = "usb-nop-xceiv";
 		clocks = <&clks IMX7D_USB_HSIC_ROOT_CLK>;
 		clock-names = "main_clk";
+		power-domains = <&pgc_hsic_phy>;
 		#phy-cells = <0>;
 	};
 
@@ -1153,7 +1154,6 @@ usbh: usb@30b30000 {
 				compatible = "fsl,imx7d-usb", "fsl,imx27-usb";
 				reg = <0x30b30000 0x200>;
 				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
-				power-domains = <&pgc_hsic_phy>;
 				clocks = <&clks IMX7D_USB_CTRL_CLK>;
 				fsl,usbphy = <&usbphynop3>;
 				fsl,usbmisc = <&usbmisc3 0>;
-- 
2.25.1

