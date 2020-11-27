Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 315E32C6C7E
	for <lists+devicetree@lfdr.de>; Fri, 27 Nov 2020 21:19:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732477AbgK0ULd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Nov 2020 15:11:33 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:47154 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732312AbgK0ULO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Nov 2020 15:11:14 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ARKAVF3127944;
        Fri, 27 Nov 2020 14:10:31 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1606507831;
        bh=9P9h869d/H3NtbYw6kInjjmuA7RjKlwn3RwLkRR9KYs=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=IirwtUbJjMB146Rr2fhvPeINE1Dbk9T2QtpqxkldkSeSk9QYk1LJqRV41mGRnr+am
         w4HZ6l/yNBhTSXQH8IS/iKXKwHjeRSUR7l2J1XqR3Hna/E/rG4aqh+U1/EohBdZFFY
         tk5+QeB60x2HvOaCnq21U5sP6VuXNK9dRXhEX7u4=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ARKAVNs092810
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 27 Nov 2020 14:10:31 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 27
 Nov 2020 14:10:30 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 27 Nov 2020 14:10:30 -0600
Received: from pxplinux063.india.englab.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ARKAPw7117269;
        Fri, 27 Nov 2020 14:10:28 -0600
From:   Sekhar Nori <nsekhar@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>
CC:     Faiz Abbas <faiz_abbas@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
Subject: [PATCH v2 1/2] arm64: dts: ti: k3-j721e-main: Add output tap delay values
Date:   Sat, 28 Nov 2020 01:40:23 +0530
Message-ID: <20201127201024.64836-2-nsekhar@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201127201024.64836-1-nsekhar@ti.com>
References: <20201127201024.64836-1-nsekhar@ti.com>
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Faiz Abbas <faiz_abbas@ti.com>

Add output tap delay values as given in the latest Data Manual[1],
SPRSP36E, revised December 2019.

[1] https://www.ti.com/lit/gpn/tda4vm

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
Signed-off-by: Sekhar Nori <nsekhar@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 19e602afdb05..d87748cb6896 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -1079,7 +1079,11 @@
 		bus-width = <8>;
 		mmc-hs400-1_8v;
 		mmc-ddr-1_8v;
-		ti,otap-del-sel = <0x2>;
+		ti,otap-del-sel-legacy = <0xf>;
+		ti,otap-del-sel-mmc-hs = <0xf>;
+		ti,otap-del-sel-ddr52 = <0x5>;
+		ti,otap-del-sel-hs200 = <0x6>;
+		ti,otap-del-sel-hs400 = <0x0>;
 		ti,trm-icp = <0x8>;
 		ti,strobe-sel = <0x77>;
 		dma-coherent;
@@ -1094,7 +1098,12 @@
 		clocks = <&k3_clks 92 0>, <&k3_clks 92 5>;
 		assigned-clocks = <&k3_clks 92 0>;
 		assigned-clock-parents = <&k3_clks 92 1>;
-		ti,otap-del-sel = <0x2>;
+		ti,otap-del-sel-legacy = <0x0>;
+		ti,otap-del-sel-sd-hs = <0xf>;
+		ti,otap-del-sel-sdr12 = <0xf>;
+		ti,otap-del-sel-sdr25 = <0xf>;
+		ti,otap-del-sel-sdr50 = <0xc>;
+		ti,otap-del-sel-ddr50 = <0xc>;
 		ti,trm-icp = <0x8>;
 		ti,clkbuf-sel = <0x7>;
 		dma-coherent;
@@ -1110,7 +1119,12 @@
 		clocks = <&k3_clks 93 0>, <&k3_clks 93 5>;
 		assigned-clocks = <&k3_clks 93 0>;
 		assigned-clock-parents = <&k3_clks 93 1>;
-		ti,otap-del-sel = <0x2>;
+		ti,otap-del-sel-legacy = <0x0>;
+		ti,otap-del-sel-sd-hs = <0xf>;
+		ti,otap-del-sel-sdr12 = <0xf>;
+		ti,otap-del-sel-sdr25 = <0xf>;
+		ti,otap-del-sel-sdr50 = <0xc>;
+		ti,otap-del-sel-ddr50 = <0xc>;
 		ti,trm-icp = <0x8>;
 		ti,clkbuf-sel = <0x7>;
 		dma-coherent;
-- 
2.17.1

