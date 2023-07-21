Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C6B175C5AA
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 13:13:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229809AbjGULNB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 07:13:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230287AbjGULMq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 07:12:46 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC2571FED
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 04:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1689937944; x=1721473944;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ZhWybPxAQoygEQJBiDXydbSFNa7Yijhb07GZXrZ0o8Y=;
  b=eMGxVgxXgkiY163p6J7j397RzU9FD2Xi73BhJBU+PYPepmS2HkX+k/a0
   RHAKuArugf8L4MwNjHOGZrtkkMOFwfK2noZz/IN7GwX0zwbvvWIMdj+Hn
   +lWT++M0InvKCdMbGRN0IxFpaculPxDqV4PecMkoEKRVbvRcr2qElkLWp
   /5nTUHP4Qb73vxh1/dkKuLe1ZM5gYYGg2lotde5+4GBtFrEvaKNYwl87A
   obqGSKXP8LKD7W8hk0Gw5QEQ8TXJDRh3Sl3tje7IoOCdK/dPM1jVSW9Ii
   dDWh44QOLZj697HFEbmhwFJ5rmJSCRfNfhXjHq4XCph0y8c9w50ozD8nP
   Q==;
X-IronPort-AV: E=Sophos;i="6.01,220,1684792800"; 
   d="scan'208";a="32052715"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 21 Jul 2023 13:10:44 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id DD014280078;
        Fri, 21 Jul 2023 13:10:43 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Frank Li <Frank.Li@nxp.com>, Peng Fan <peng.fan@nxp.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] arm64: dts: imx8: conn: Fix reg order for USB3 controller
Date:   Fri, 21 Jul 2023 13:10:38 +0200
Message-Id: <20230721111038.1234387-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230721111038.1234387-1-alexander.stein@ew.tq-group.com>
References: <20230721111038.1234387-1-alexander.stein@ew.tq-group.com>
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

Cadence USB3 bindings specify a specific reg order. Adjust DT entries
to match the bindings.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
index e62a43591361..fc1a5d34382b 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
@@ -157,12 +157,10 @@ usbotg3: usb@5b110000 {
 
 		usbotg3_cdns3: usb@5b120000 {
 			compatible = "cdns,usb3";
-			reg = <0x5b130000 0x10000>,     /* memory area for HOST registers */
-			      <0x5b140000 0x10000>,   /* memory area for DEVICE registers */
-			      <0x5b120000 0x10000>;   /* memory area for OTG/DRD registers */
-			reg-names = "xhci", "dev", "otg";
-			#address-cells = <1>;
-			#size-cells = <1>;
+			reg = <0x5b120000 0x10000>,   /* memory area for OTG/DRD registers */
+			      <0x5b130000 0x10000>,   /* memory area for HOST registers */
+			      <0x5b140000 0x10000>;   /* memory area for DEVICE registers */
+			reg-names = "otg", "xhci", "dev";
 			interrupt-parent = <&gic>;
 			interrupts = <GIC_SPI 271 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 271 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.34.1

