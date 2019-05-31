Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C99D6305E2
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2019 02:49:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726408AbfEaAtC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 May 2019 20:49:02 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:46960 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726131AbfEaAtC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 May 2019 20:49:02 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4V0mp6I026191;
        Thu, 30 May 2019 19:48:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1559263731;
        bh=WK2k58QukEIJdpLlTnnulnkBnYtAL9Snthfg/26Dpqk=;
        h=From:To:CC:Subject:Date;
        b=wUbIg09Ma8NH35/hGDFgI+X+6t2VsqCEP11qR0HcHzyf0GUJTfCh+Wb4WFG0z/K1f
         ycfD2gTCFgeJBHqBpww77/TGP7k07QHVztDDLrkHtsLvQU4YFKv39+FY7ai+fkEKqg
         Kn4x/tC7wHtG6TN71BwFRYvNlLm4ATZRzc735ws0=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4V0moI4075840
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 30 May 2019 19:48:50 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 30
 May 2019 19:48:50 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 30 May 2019 19:48:50 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com [128.247.22.53])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4V0moIh026309;
        Thu, 30 May 2019 19:48:50 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
        by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x4V0mnm09273;
        Thu, 30 May 2019 19:48:49 -0500 (CDT)
From:   Suman Anna <s-anna@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     Rob Herring <robh+dt@kernel.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-j721e-main: Add Main NavSS Interrupt controller node
Date:   Thu, 30 May 2019 19:48:48 -0500
Message-ID: <20190531004848.32061-1-s-anna@ti.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the Interrupt controller node for the Interrupt Router present within
the Main NavSS module. This Interrupt Router can route 192 interrupts to
the GIC_SPI in 3 sets of 64 interrupts each. Note that the last set is
reserved for the host ID A72_3 for hypervisor usecases, so the node is
added only with 2 sets for the Linux kernel context (host id A72_2). This
is specified through the ti,sci-rm-range-girq property.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
Hi Tero,

This patch depends on the J721E series [1] from Nishanth. Patch tested
using additional patches exercising Mailbox IP.

regards
Suman

[1] https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=121189

 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index d42912044a5d..36c51ff9a898 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -50,6 +50,24 @@
 		#iommu-cells = <1>;
 	};
 
+	cbass_main_navss: interconnect0 {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		main_navss_intr: interrupt-controller1 {
+			compatible = "ti,sci-intr";
+			ti,intr-trigger-type = <4>;
+			interrupt-controller;
+			interrupt-parent = <&gic500>;
+			#interrupt-cells = <2>;
+			ti,sci = <&dmsc>;
+			ti,sci-dst-id = <14>;
+			ti,sci-rm-range-girq = <0>, <2>;
+		};
+	};
+
 	secure_proxy_main: mailbox@32c00000 {
 		compatible = "ti,am654-secure-proxy";
 		#mbox-cells = <1>;
-- 
2.21.0

