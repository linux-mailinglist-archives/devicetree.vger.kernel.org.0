Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CB55970940
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 21:05:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730833AbfGVTFr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 15:05:47 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:43772 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726466AbfGVTFp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 15:05:45 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6MJ5frV088363;
        Mon, 22 Jul 2019 14:05:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1563822342;
        bh=Ogwf7jvjGLRTP57eC7tE/Y6yJIQsl/nooaVyG9ehHxk=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=ZI72pcq+b13EdnGArVYBshf19DFLRkUYR4hSGKeprFtx8uI4+dvcN8QpNH1izyoKx
         qdB6pOh/+gHFM7TqZUs4DQ9Mdkdhp2qcHlznB+SmOBHEPTyqky+vO0jewa/iBtG3ZP
         sdIZ/jBzJw691fJ5quXbTyLJTECrg71FdFXA2qy0=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6MJ5fVa028609
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 22 Jul 2019 14:05:41 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 22
 Jul 2019 14:05:41 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 22 Jul 2019 14:05:41 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com [128.247.22.53])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6MJ5fVW064571;
        Mon, 22 Jul 2019 14:05:41 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
        by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6MJ5fZ02573;
        Mon, 22 Jul 2019 14:05:41 -0500 (CDT)
From:   Suman Anna <s-anna@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 2/2] arm64: dts: ti: k3-j721e-main: Add hwspinlock node
Date:   Mon, 22 Jul 2019 14:05:39 -0500
Message-ID: <20190722190539.27816-3-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190722190539.27816-1-s-anna@ti.com>
References: <20190722190539.27816-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Main NavSS block on J721E SoCs contains a HwSpinlock IP instance that
is same as the IP on AM65x SoCs and similar to the IP on some OMAP SoCs.
Add the DT node for this on J721E SoCs. The node is present within the
Main NavSS block, and is added as a child node under the cbass_main_navss
interconnect node.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index a01308142f77..a2e031f7d88e 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -89,6 +89,12 @@
 			ti,sci-rm-range-vint = <0xa>;
 			ti,sci-rm-range-global-event = <0xd>;
 		};
+
+		hwspinlock: spinlock@30e00000 {
+			compatible = "ti,am654-hwspinlock";
+			reg = <0x00 0x30e00000 0x00 0x1000>;
+			#hwlock-cells = <1>;
+		};
 	};
 
 	secure_proxy_main: mailbox@32c00000 {
-- 
2.22.0

