Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 936A0116AD
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2019 11:42:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726447AbfEBJmD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 May 2019 05:42:03 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:39364 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726268AbfEBJmD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 May 2019 05:42:03 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x429fvUl050693;
        Thu, 2 May 2019 04:41:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1556790117;
        bh=PD/MbWwa4koM1CAc+Dt+uBaXzKh3sZhruc/X7hicVB0=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=eS0jRfiOTrtFx1cQYBC3Cz5Xw0EHhtQ0OHfzu0ZsfP8ifhqocw2QMihPbcXrHbnk2
         xSHjMIhOqfYqC8gzDtbt2pBOkh4w20sNhFIgjhX9oqFeFgrDIcaRN3KlctUiZAz34p
         M7rYRylXieQd+XtdpT9V0JtH8pK4GNrDCNmdEJ0w=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x429fvhh070676
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 2 May 2019 04:41:57 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 2 May
 2019 04:41:57 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 2 May 2019 04:41:57 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x429fkS2038664;
        Thu, 2 May 2019 04:41:54 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH 3/3] arm64: dts: ti: k3-am654: Add interrupt controllers in wakeup domain
Date:   Thu, 2 May 2019 15:11:19 +0530
Message-ID: <20190502094119.16350-4-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190502094119.16350-1-lokeshvutla@ti.com>
References: <20190502094119.16350-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Wakeup domain in AM654 SoC has an interrupt router connected to gpio
in wakeup domain. Add DT node for this interrupt router.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
index 75310bcfb94b..f1ca171abdf8 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
@@ -63,4 +63,15 @@
 		clocks = <&k3_clks 115 1>;
 		power-domains = <&k3_pds 115>;
 	};
+
+	intr_wkup_gpio: interrupt-controller2 {
+		compatible = "ti,sci-intr";
+		ti,intr-trigger-type = <1>;
+		interrupt-controller;
+		interrupt-parent = <&gic500>;
+		#interrupt-cells = <2>;
+		ti,sci = <&dmsc>;
+		ti,sci-dst-id = <56>;
+		ti,sci-rm-range-girq = <0x4>;
+	};
 };
-- 
2.21.0

