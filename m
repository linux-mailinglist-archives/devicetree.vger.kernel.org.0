Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC4BD2C6CCB
	for <lists+devicetree@lfdr.de>; Fri, 27 Nov 2020 22:04:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729330AbgK0VDR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Nov 2020 16:03:17 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:57238 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729302AbgK0VBl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Nov 2020 16:01:41 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ARL1VLG012884;
        Fri, 27 Nov 2020 15:01:31 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1606510891;
        bh=SwhZTJlUWdWrI+HfnwJoRTi44shyRISrndizapQG4qw=;
        h=From:To:CC:Subject:Date;
        b=Bk5214ZAWcww05fq2FCWmjj7S+v5/OJdND4gb6SA3RGHCUMNG/j9PAdTMpdJ8nED/
         kfM44+Uga3m0HB8wb6riyqeIwQsV8aAMRs6sBxP3KTG+4KiUA5lNFwN73BINgLr7+c
         3u56rlFDwLltDkp9GiT4utat5vkmvXkOvcPFyhAA=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ARL1VFk070834
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 27 Nov 2020 15:01:31 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 27
 Nov 2020 15:01:31 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 27 Nov 2020 15:01:31 -0600
Received: from pxplinux063.india.englab.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ARL1S7H075638;
        Fri, 27 Nov 2020 15:01:29 -0600
From:   Sekhar Nori <nsekhar@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>
CC:     Grygorii Strashko <grygorii.strashko@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
Subject: [PATCH v2] arm64: dts: ti: k3: squelch warning about lack of #interrupt-cells
Date:   Sat, 28 Nov 2020 02:31:28 +0530
Message-ID: <20201127210128.9151-1-nsekhar@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are couple of places where INTA interrupt controller
lacks #interrupt-cells property. This leads to warnings of
the type:

arch/arm64/boot/dts/ti/k3-j721e-main.dtsi:147.51-156.5: Warning (interrupt_provider): /bus@100000/main-navss/interrupt-controller@33d00000: Missing #interrupt-cells in interrupt provider

when building TI device-tree files with W=2 warning level.
Fix these.

Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
Signed-off-by: Sekhar Nori <nsekhar@ti.com>
---
v2:
- Add Grygorii's Reviewed-by:

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi  | 1 +
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 3eeb6e9876db..aa8725db0187 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -473,6 +473,7 @@
 			interrupt-controller;
 			interrupt-parent = <&intr_main_navss>;
 			msi-controller;
+			#interrupt-cells = <0>;
 			ti,sci = <&dmsc>;
 			ti,sci-dev-id = <179>;
 			ti,interrupt-ranges = <0 0 256>;
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index e2a96b2c423c..ffedd9531362 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -148,6 +148,7 @@
 			interrupt-controller;
 			interrupt-parent = <&main_navss_intr>;
 			msi-controller;
+			#interrupt-cells = <0>;
 			ti,sci = <&dmsc>;
 			ti,sci-dev-id = <209>;
 			ti,interrupt-ranges = <0 0 256>;
-- 
2.17.1

