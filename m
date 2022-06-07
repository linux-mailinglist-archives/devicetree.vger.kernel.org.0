Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5CA1C53F67A
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 08:47:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237225AbiFGGrm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 02:47:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237222AbiFGGrl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 02:47:41 -0400
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 046942BB24
        for <devicetree@vger.kernel.org>; Mon,  6 Jun 2022 23:47:39 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2576lUjn058852;
        Tue, 7 Jun 2022 01:47:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1654584450;
        bh=ro3uEmamXLD2DJiX+pcaLGmTFnqcIb3NuiEBBGahxLA=;
        h=From:To:CC:Subject:Date;
        b=drfDCnU5CnIv/IMe5M1/6lRe7POPjUIQLg3h7f8iup3902CCguWJYFRia6I9sNzA2
         nlRK8sMsd2osqNh8hg/RuITttmP/uyBDFVkXwrIVab5QpEiWs5azCVLIlkevYtgswO
         lJvNGdx0yqeunQtmqV2/wSvL4/jWvf6GZVfvisQg=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2576lUDu002375
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 7 Jun 2022 01:47:30 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 7
 Jun 2022 01:47:29 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 7 Jun 2022 01:47:29 -0500
Received: from a0393678-lt.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2576lPoQ049003;
        Tue, 7 Jun 2022 01:47:26 -0500
From:   Kishon Vijay Abraham I <kishon@ti.com>
To:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Subject: [PATCH v2] arm64: dts: ti: k3-am65-main: Remove "syscon" nodes added for pcieX_mode/pcie_devid
Date:   Tue, 7 Jun 2022 12:17:23 +0530
Message-ID: <20220607064723.2623-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove "syscon" nodes added for pcieX_mode/pcie_devid and have the PCIe
node point to the parent with an offset argument. This change is as
discussed in [1].

commit 7dcf07ac8867 ("PCI: keystone: Use phandle argument from
"ti,syscon-pcie-id"/"ti,syscon-pcie-mode"") added the corresponding driver
changes.

[1] -> http://lore.kernel.org/r/CAL_JsqKiUcO76bo1GoepWM1TusJWoty_BRy2hFSgtEVMqtrvvQ@mail.gmail.com

Cc: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Reported-by: Jan Kiszka <jan.kiszka@siemens.com>
Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
Changes from v1:
Added Reported-by: Jan Kiszka.

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 27 ++++++------------------
 1 file changed, 6 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index e749343acced..8509fdc561c1 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -307,21 +307,6 @@
 		#size-cells = <1>;
 		ranges = <0x0 0x0 0x00100000 0x1c000>;
 
-		pcie0_mode: pcie-mode@4060 {
-			compatible = "syscon";
-			reg = <0x00004060 0x4>;
-		};
-
-		pcie1_mode: pcie-mode@4070 {
-			compatible = "syscon";
-			reg = <0x00004070 0x4>;
-		};
-
-		pcie_devid: pcie-devid@210 {
-			compatible = "syscon";
-			reg = <0x00000210 0x4>;
-		};
-
 		serdes0_clk: clock@4080 {
 			compatible = "syscon";
 			reg = <0x00004080 0x4>;
@@ -697,8 +682,8 @@
 		#size-cells = <2>;
 		ranges = <0x81000000 0 0          0x0 0x10020000 0 0x00010000>,
 			 <0x82000000 0 0x10030000 0x0 0x10030000 0 0x07FD0000>;
-		ti,syscon-pcie-id = <&pcie_devid>;
-		ti,syscon-pcie-mode = <&pcie0_mode>;
+		ti,syscon-pcie-id = <&scm_conf 0x210>;
+		ti,syscon-pcie-mode = <&scm_conf 0x4060>;
 		bus-range = <0x0 0xff>;
 		num-viewport = <16>;
 		max-link-speed = <2>;
@@ -713,7 +698,7 @@
 		reg =  <0x0 0x5500000 0x0 0x1000>, <0x0 0x5501000 0x0 0x1000>, <0x0 0x10000000 0x0 0x8000000>, <0x0 0x5506000 0x0 0x1000>;
 		reg-names = "app", "dbics", "addr_space", "atu";
 		power-domains = <&k3_pds 120 TI_SCI_PD_EXCLUSIVE>;
-		ti,syscon-pcie-mode = <&pcie0_mode>;
+		ti,syscon-pcie-mode = <&scm_conf 0x4060>;
 		num-ib-windows = <16>;
 		num-ob-windows = <16>;
 		max-link-speed = <2>;
@@ -730,8 +715,8 @@
 		#size-cells = <2>;
 		ranges = <0x81000000 0 0          0x0   0x18020000 0 0x00010000>,
 			 <0x82000000 0 0x18030000 0x0   0x18030000 0 0x07FD0000>;
-		ti,syscon-pcie-id = <&pcie_devid>;
-		ti,syscon-pcie-mode = <&pcie1_mode>;
+		ti,syscon-pcie-id = <&scm_conf 0x210>;
+		ti,syscon-pcie-mode = <&scm_conf 0x4070>;
 		bus-range = <0x0 0xff>;
 		num-viewport = <16>;
 		max-link-speed = <2>;
@@ -746,7 +731,7 @@
 		reg =  <0x0 0x5600000 0x0 0x1000>, <0x0 0x5601000 0x0 0x1000>, <0x0 0x18000000 0x0 0x4000000>, <0x0 0x5606000 0x0 0x1000>;
 		reg-names = "app", "dbics", "addr_space", "atu";
 		power-domains = <&k3_pds 121 TI_SCI_PD_EXCLUSIVE>;
-		ti,syscon-pcie-mode = <&pcie1_mode>;
+		ti,syscon-pcie-mode = <&scm_conf 0x4070>;
 		num-ib-windows = <16>;
 		num-ob-windows = <16>;
 		max-link-speed = <2>;
-- 
2.17.1

