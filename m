Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A5FE546193
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 16:50:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728811AbfFNOut (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 10:50:49 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:36148 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727560AbfFNOut (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jun 2019 10:50:49 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5EEoiZj002144;
        Fri, 14 Jun 2019 09:50:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1560523844;
        bh=HIcplb1e+QUtPQneVnIrH3pRLrqdkUWMj3EmxZmtwCI=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=qlKHPkqzFIiBS1FvnEmyLNalK3bbbWEAwLRpN3+E4vX4ZHrnAOk5UCnrrRBGml/gi
         w/4y3LPESM7A89fBnQPBT8o9jGyAOBSEJ8Kvv3RrFPmDqAZWaVRgs/2pXUtkw5K0CO
         ykGDGB/BswAm2qZJDaOVjpo0OVG7RYs7sVO1ktJI=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5EEoiHO100027
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 14 Jun 2019 09:50:44 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 14
 Jun 2019 09:50:44 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 14 Jun 2019 09:50:44 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5EEoYCx029549;
        Fri, 14 Jun 2019 09:50:41 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Suman Anna <s-anna@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH 2/2] arm64: dts: ti: k3-j721e: Add interrupt controllers in wakeup domain
Date:   Fri, 14 Jun 2019 20:20:01 +0530
Message-ID: <20190614145001.9598-3-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190614145001.9598-1-lokeshvutla@ti.com>
References: <20190614145001.9598-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Wakeup domain in J721E SoC has an interrupt router connected to gpio
in wakeup domain. Add DT node for this interrupt router.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
index b72e033fa159..e79fd85112a9 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
@@ -69,4 +69,15 @@
 		clocks = <&k3_clks 149 0>;
 		clock-names = "fclk";
 	};
+
+	wkup_gpio_intr: interrupt-controller2 {
+		compatible = "ti,sci-intr";
+		ti,intr-trigger-type = <1>;
+		interrupt-controller;
+		interrupt-parent = <&gic500>;
+		#interrupt-cells = <2>;
+		ti,sci = <&dmsc>;
+		ti,sci-dst-id = <14>;
+		ti,sci-rm-range-girq = <0x5>;
+	};
 };
-- 
2.21.0

