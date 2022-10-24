Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A19CC60BA4F
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 22:35:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232131AbiJXUe6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 16:34:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234435AbiJXUeD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 16:34:03 -0400
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28BE6A287B
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 11:45:00 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29OFGsLg003630;
        Mon, 24 Oct 2022 10:16:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1666624614;
        bh=X0IH8JyMW3NVdsb7DgjZQFoo0eFEUa5BBDF5qYBxDeI=;
        h=From:To:CC:Subject:Date;
        b=FAF9tK2dPDB3QzbKysWLGKceZStah30LFfnqkJ878tNK6xVFXKyq5T2bDS22V7oNS
         IU2wGUk4huI1EXfZiJaCZoJzREgQ+wnKxWFyiuyhzrq7gMF3XuJGICpz+9jXCflFI9
         8KD/Xzp0kK4FIeT/WfPjL0OV9xAwov/mHZjNl25k=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29OFGsJC018104
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 24 Oct 2022 10:16:54 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Mon, 24
 Oct 2022 10:16:53 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Mon, 24 Oct 2022 10:16:53 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29OFGo7u088429;
        Mon, 24 Oct 2022 10:16:52 -0500
From:   Matt Ranostay <mranostay@ti.com>
To:     <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <miquel.raynal@bootlin.com>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Matt Ranostay <mranostay@ti.com>
Subject: [PATCH] arm64: dts: ti: rename clock-names adc_tsc_fck to fck
Date:   Mon, 24 Oct 2022 08:16:48 -0700
Message-ID: <20221024151648.394623-1-mranostay@ti.com>
X-Mailer: git-send-email 2.38.GIT
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Avoid the following warnings from dt-schema by just renaming the
clock-names string from adc_tsc_fck to fck so it matches the values in
ti,am3359-tscadc.yaml

tscadc@40200000: clock-names:0: 'fck' was expected

Signed-off-by: Matt Ranostay <mranostay@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am64-main.dtsi        | 2 +-
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi         | 4 ++--
 arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi | 2 +-
 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 4 ++--
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
index d6aa23681bbe..b61c15427bf7 100644
--- a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
@@ -612,7 +612,7 @@ tscadc0: tscadc@28001000 {
 		assigned-clocks = <&k3_clks 0 0>;
 		assigned-clock-parents = <&k3_clks 0 3>;
 		assigned-clock-rates = <60000000>;
-		clock-names = "adc_tsc_fck";
+		clock-names = "fck";
 
 		adc {
 			#io-channel-cells = <1>;
diff --git a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
index 8d592bf41d6f..1807ec4730cb 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
@@ -85,7 +85,7 @@ tscadc0: tscadc@40200000 {
 		clocks = <&k3_clks 0 2>;
 		assigned-clocks = <&k3_clks 0 2>;
 		assigned-clock-rates = <60000000>;
-		clock-names = "adc_tsc_fck";
+		clock-names = "fck";
 		dmas = <&mcu_udmap 0x7100>,
 			<&mcu_udmap 0x7101 >;
 		dma-names = "fifo0", "fifo1";
@@ -103,7 +103,7 @@ tscadc1: tscadc@40210000 {
 		clocks = <&k3_clks 1 2>;
 		assigned-clocks = <&k3_clks 1 2>;
 		assigned-clock-rates = <60000000>;
-		clock-names = "adc_tsc_fck";
+		clock-names = "fck";
 		dmas = <&mcu_udmap 0x7102>,
 			<&mcu_udmap 0x7103>;
 		dma-names = "fifo0", "fifo1";
diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
index 2025aab4b66f..3d9190a869c5 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
@@ -325,7 +325,7 @@ tscadc0: tscadc@40200000 {
 		clocks = <&k3_clks 0 1>;
 		assigned-clocks = <&k3_clks 0 3>;
 		assigned-clock-rates = <60000000>;
-		clock-names = "adc_tsc_fck";
+		clock-names = "fck";
 		dmas = <&main_udmap 0x7400>,
 			<&main_udmap 0x7401>;
 		dma-names = "fifo0", "fifo1";
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
index 5d9ec221fa34..7799db6a167c 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
@@ -216,7 +216,7 @@ tscadc0: tscadc@40200000 {
 		clocks = <&k3_clks 0 1>;
 		assigned-clocks = <&k3_clks 0 3>;
 		assigned-clock-rates = <60000000>;
-		clock-names = "adc_tsc_fck";
+		clock-names = "fck";
 		dmas = <&main_udmap 0x7400>,
 			<&main_udmap 0x7401>;
 		dma-names = "fifo0", "fifo1";
@@ -235,7 +235,7 @@ tscadc1: tscadc@40210000 {
 		clocks = <&k3_clks 1 1>;
 		assigned-clocks = <&k3_clks 1 3>;
 		assigned-clock-rates = <60000000>;
-		clock-names = "adc_tsc_fck";
+		clock-names = "fck";
 		dmas = <&main_udmap 0x7402>,
 			<&main_udmap 0x7403>;
 		dma-names = "fifo0", "fifo1";
-- 
2.38.GIT

