Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 608CC299A66
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 00:27:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406097AbgJZX1a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Oct 2020 19:27:30 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:59142 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406096AbgJZX1a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Oct 2020 19:27:30 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09QNRNqT022077;
        Mon, 26 Oct 2020 18:27:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603754843;
        bh=uVLq17z+MBkIBIOWl788EWyNZxtZCFNSCpgwdudlhPQ=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=qegkEEo5TIX2jomUinYzKx4f7LifcEludHlUOyukhPIQg+6604UsAVqpxCAYtkysZ
         d6UJfYK1si7czA1e5htNbEMVAHnRyb4EZFTz/RfymXpW9abkYbhy7UXsDYw6rbGXUJ
         RjGUbn7ywd9WAT44+DCu0w2OMD6C1NPyRpLNMEek=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09QNRNK5043046
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 26 Oct 2020 18:27:23 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 26
 Oct 2020 18:27:23 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 26 Oct 2020 18:27:23 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09QNRNTP118934;
        Mon, 26 Oct 2020 18:27:23 -0500
Received: from localhost ([10.250.39.72])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 09QNRNQc032566;
        Mon, 26 Oct 2020 18:27:23 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 1/3] arm64: dts: ti: k3-j7200-main: Add hwspinlock node
Date:   Mon, 26 Oct 2020 18:26:35 -0500
Message-ID: <20201026232637.15681-2-s-anna@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201026232637.15681-1-s-anna@ti.com>
References: <20201026232637.15681-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Main NavSS block on J7200 SoCs contains a HwSpinlock IP instance that
is same as the IP on AM65x and J721E SoCs. Add the DT node for this on
J7200 SoCs. The node is present within the Main NavSS block, and is added
as a child node under the main_navss interconnect node.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
index 72d6496e88dd..4c53a3036066 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
@@ -115,6 +115,12 @@ secure_proxy_main: mailbox@32c00000 {
 			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		hwspinlock: spinlock@30e00000 {
+			compatible = "ti,am654-hwspinlock";
+			reg = <0x00 0x30e00000 0x00 0x1000>;
+			#hwlock-cells = <1>;
+		};
+
 		main_ringacc: ringacc@3c000000 {
 			compatible = "ti,am654-navss-ringacc";
 			reg =	<0x00 0x3c000000 0x00 0x400000>,
-- 
2.28.0

