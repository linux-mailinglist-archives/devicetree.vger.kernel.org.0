Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 94C4546192
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 16:50:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728537AbfFNOuq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 10:50:46 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:58812 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727560AbfFNOuq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jun 2019 10:50:46 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5EEofGh090288;
        Fri, 14 Jun 2019 09:50:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1560523841;
        bh=rjGtB8HiTUZyJ3k3HblOFiQR+pVG5Y1GUtKfrNafjSE=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=nKy6OO5pGIzp/R3zuzOMa3o2VCli3DaL7tGjAfLzqqRyP91231swWubVM6pY3ByMw
         vMhp6uMhCmMdkJSkVhLDo4gTjGSBvgWtg5mmq6hSeSh3eDP36tiN37kBXacHfIarbD
         Ok9DGcgEo89HlekIONem6l18vTkMU+TL649BB3e8=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5EEofss016204
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 14 Jun 2019 09:50:41 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 14
 Jun 2019 09:50:40 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 14 Jun 2019 09:50:40 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5EEoYCw029549;
        Fri, 14 Jun 2019 09:50:38 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Suman Anna <s-anna@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH 1/2] arm64: dts: ti: k3-j721e: Add interrupt controllers in main domain
Date:   Fri, 14 Jun 2019 20:20:00 +0530
Message-ID: <20190614145001.9598-2-lokeshvutla@ti.com>
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

Main domain in J721E has the following interrupt controller instances:
- Main Domain GPIO Interrupt router connected to gpio in main domain.
- Under the Main Domain Navigator Subsystem(NAVSS)
	- Main Navss Interrupt Router connected to main navss inta and mailboxes.
	- Main Navss Interrupt Aggregator connected to main domain UDMASS

Add DT nodes for the interrupt controllers available in main domain.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 36c51ff9a898..a01308142f77 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -50,6 +50,17 @@
 		#iommu-cells = <1>;
 	};
 
+	main_gpio_intr: interrupt-controller0 {
+		compatible = "ti,sci-intr";
+		ti,intr-trigger-type = <1>;
+		interrupt-controller;
+		interrupt-parent = <&gic500>;
+		#interrupt-cells = <2>;
+		ti,sci = <&dmsc>;
+		ti,sci-dst-id = <14>;
+		ti,sci-rm-range-girq = <0x1>;
+	};
+
 	cbass_main_navss: interconnect0 {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -66,6 +77,18 @@
 			ti,sci-dst-id = <14>;
 			ti,sci-rm-range-girq = <0>, <2>;
 		};
+
+		main_udmass_inta: interrupt-controller@33d00000 {
+			compatible = "ti,sci-inta";
+			reg = <0x0 0x33d00000 0x0 0x100000>;
+			interrupt-controller;
+			interrupt-parent = <&main_navss_intr>;
+			msi-controller;
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <209>;
+			ti,sci-rm-range-vint = <0xa>;
+			ti,sci-rm-range-global-event = <0xd>;
+		};
 	};
 
 	secure_proxy_main: mailbox@32c00000 {
-- 
2.21.0

