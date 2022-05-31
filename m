Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 652D1539841
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 22:53:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233858AbiEaUxN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 16:53:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229598AbiEaUxM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 16:53:12 -0400
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A48189CF6D
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 13:53:11 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 24VKr0bZ126240;
        Tue, 31 May 2022 15:53:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1654030380;
        bh=bxupivyddy201aHQ97npN2Sbk95KsVQy3YSRqMW0t/o=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=hu6xbEhEwzZz94Zx7y1PUhVLr8R3RD7RC8K6rGGFnQYlTWYq9dvJbGEeb9yken8iv
         7GRZryF8/2XEvC4ORD0kdzAHsczMJEuP2HhEKnyP/P4ogOo12GIL17i+Ljkzoj4K4p
         pElncz42mV5SD0G6ddPZj8oGm6WTw5gyJuNp0MdI=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 24VKr0Jj003580
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 31 May 2022 15:53:00 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 31
 May 2022 15:52:59 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 31 May 2022 15:52:59 -0500
Received: from jti.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 24VKqkna125178;
        Tue, 31 May 2022 15:52:54 -0500
From:   Georgi Vlaev <g-vlaev@ti.com>
To:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Georgi Vlaev <g-vlaev@ti.com>
Subject: [PATCH 1/2] arm64: dts: ti: k3-am62-main: Add epwm nodes
Date:   Tue, 31 May 2022 23:52:28 +0300
Message-ID: <20220531205229.198011-2-g-vlaev@ti.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220531205229.198011-1-g-vlaev@ti.com>
References: <20220531205229.198011-1-g-vlaev@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible DT nodes for all EPWM instances
present in AM62 SoC. There is a total of 3 EPWM modules
available, sharing the same K3 IP as in AM64 SoC.

This also adds a required "ti,am62-epwm-tbclk" clock
provider node for the EPWM time-base clock.

Signed-off-by: Georgi Vlaev <g-vlaev@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62-main.dtsi | 33 ++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
index d08abad0bcf4..951f0309d6be 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
@@ -54,6 +54,12 @@ phy_gmii_sel: phy@4044 {
 			reg = <0x4044 0x8>;
 			#phy-cells = <1>;
 		};
+
+		epwm_tbclk: clock@4130 {
+			compatible = "ti,am62-epwm-tbclk", "syscon";
+			reg = <0x4130 0x4>;
+			#clock-cells = <1>;
+		};
 	};
 
 	dmss: bus@48000000 {
@@ -571,4 +577,31 @@ main_mcan0: can@20701000 {
 		interrupt-names = "int0", "int1";
 		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
 	};
+
+	epwm0: pwm@23000000 {
+		compatible = "ti,am64-epwm", "ti,am3352-ehrpwm";
+		#pwm-cells = <3>;
+		reg = <0x00 0x23000000 0x00 0x100>;
+		power-domains = <&k3_pds 86 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&epwm_tbclk 0>, <&k3_clks 86 0>;
+		clock-names = "tbclk", "fck";
+	};
+
+	epwm1: pwm@23010000 {
+		compatible = "ti,am64-epwm", "ti,am3352-ehrpwm";
+		#pwm-cells = <3>;
+		reg = <0x00 0x23010000 0x00 0x100>;
+		power-domains = <&k3_pds 87 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&epwm_tbclk 1>, <&k3_clks 87 0>;
+		clock-names = "tbclk", "fck";
+	};
+
+	epwm2: pwm@23020000 {
+		compatible = "ti,am64-epwm", "ti,am3352-ehrpwm";
+		#pwm-cells = <3>;
+		reg = <0x00 0x23020000 0x00 0x100>;
+		power-domains = <&k3_pds 88 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&epwm_tbclk 2>, <&k3_clks 88 0>;
+		clock-names = "tbclk", "fck";
+	};
 };
-- 
2.30.2

