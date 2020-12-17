Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA0792DC9D4
	for <lists+devicetree@lfdr.de>; Thu, 17 Dec 2020 01:10:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730831AbgLQAKE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Dec 2020 19:10:04 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:59248 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729023AbgLQAKE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Dec 2020 19:10:04 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0BH09HNc117899;
        Wed, 16 Dec 2020 18:09:17 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1608163757;
        bh=hzg7zw7VKfsz4t52tjBBdlSUFiH/BVX8KIWg+HlAoVQ=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=iH5yefJRGBmzDPEFs4IRQhpb7kHgnStiwuO7zfxG9CaHRmJ2Ey+Q4mvYfV95Smorq
         QL+7BTPP38xivkJthRS8hybSDkk8VWYKsFCoAmdY4xaZbnUi8aHBYFCSUgrvQgB1yY
         7+MPFC/gpC/miOmtZzZXFq1+ZmyrSkxIS40Tazo8=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0BH09H95047843
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 16 Dec 2020 18:09:17 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 16
 Dec 2020 18:09:16 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 16 Dec 2020 18:09:16 -0600
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0BH09G9p012200;
        Wed, 16 Dec 2020 18:09:16 -0600
Received: from uda0271916b.dhcp.ti.com (uda0271916b.dhcp.ti.com [128.247.81.224] (may be forged))
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 0BH09Efw112393;
        Wed, 16 Dec 2020 18:09:16 -0600
From:   Gowtham Tammana <g-tammana@ti.com>
To:     <robh+dt@kernel.org>, Nisanth Menon <nm@ti.com>,
        Tero Kristo <t-kristo@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Gowtham Tammana <g-tammana@ti.com>
Subject: [PATCH 2/2] arm64: dts: ti: k3-j7200-main: Add main domain watchdog entries
Date:   Wed, 16 Dec 2020 18:07:16 -0600
Message-ID: <20201217000716.11091-3-g-tammana@ti.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201217000716.11091-1-g-tammana@ti.com>
References: <20201217000716.11091-1-g-tammana@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT entries for main domain watchdog instances.

Signed-off-by: Gowtham Tammana <g-tammana@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
index 72d6496e88dd..de430d44c2a6 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
@@ -303,6 +303,24 @@ main_uart9: serial@2890000 {
 		clock-names = "fclk";
 	};
 
+	watchdog0: watchdog@2200000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x0 0x2200000 0x0 0x100>;
+		clocks = <&k3_clks 252 1>;
+		power-domains = <&k3_pds 252 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 252 1>;
+		assigned-clock-parents = <&k3_clks 252 5>;
+	};
+
+	watchdog1: watchdog@2210000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x0 0x2210000 0x0 0x100>;
+		clocks = <&k3_clks 253 1>;
+		power-domains = <&k3_pds 253 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 253 1>;
+		assigned-clock-parents = <&k3_clks 253 5>;
+	};
+
 	main_i2c0: i2c@2000000 {
 		compatible = "ti,j721e-i2c", "ti,omap4-i2c";
 		reg = <0x00 0x2000000 0x00 0x100>;
-- 
2.29.0

