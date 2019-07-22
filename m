Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 57DFC7093F
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 21:05:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726466AbfGVTFr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 15:05:47 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:36912 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730581AbfGVTFq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 15:05:46 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6MJ5fm6004917;
        Mon, 22 Jul 2019 14:05:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1563822341;
        bh=LMkrB4ogGV7W0icznHHDdzkNi5IqJ04YQGCvA1dlQSQ=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=RtqM9w5dgWF8IVsB6wVUJTKPzyyDHynwMVRV7OEpZ8Xxz3liencId8LVRyv/KMMIC
         r9CBfzq7s9gOQ5aUQdE5kXY35yCfJt/1uBA6Dz9VSj0DTOYZxwdsqKThTrgN0GwVhp
         ceW/rLpzkuy1WsNxIZICMAFBSYbPTJKnPM/e+B/k=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6MJ5fiv107429
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 22 Jul 2019 14:05:41 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 22
 Jul 2019 14:05:41 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 22 Jul 2019 14:05:41 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com [128.247.22.53])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6MJ5fYJ079352;
        Mon, 22 Jul 2019 14:05:41 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
        by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6MJ5fZ02569;
        Mon, 22 Jul 2019 14:05:41 -0500 (CDT)
From:   Suman Anna <s-anna@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 1/2] arm64: dts: ti: k3-am65-main: Add hwspinlock node
Date:   Mon, 22 Jul 2019 14:05:38 -0500
Message-ID: <20190722190539.27816-2-s-anna@ti.com>
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

The Main NavSS block on AM65x SoCs contains a HwSpinlock IP instance
that is similar to the IP on some OMAP SoCs. Add the DT node for this
on AM65x SoCs. The node is present within the NavSS block, and is
added as a child node under the cbass_main_navss interconnect node.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index ca70ff73f171..8413e80f9d3a 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -413,6 +413,12 @@
 			ti,sci-rm-range-vint = <0x0>;
 			ti,sci-rm-range-global-event = <0x1>;
 		};
+
+		hwspinlock: spinlock@30e00000 {
+			compatible = "ti,am654-hwspinlock";
+			reg = <0x00 0x30e00000 0x00 0x1000>;
+			#hwlock-cells = <1>;
+		};
 	};
 
 	main_gpio0:  main_gpio0@600000 {
-- 
2.22.0

