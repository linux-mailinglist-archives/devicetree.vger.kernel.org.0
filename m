Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3385238129F
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 23:07:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230142AbhENVJC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 17:09:02 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:46342 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229952AbhENVJC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 17:09:02 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14EL7jfS110746;
        Fri, 14 May 2021 16:07:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1621026465;
        bh=tA0JsSZGWhhHXTiClj/Nb6zTZ8ykTz+yXbUSTDXxdJs=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=FjSTaZguYJaSduf5qFZsIT9oEviZnoMThRT8ZSDtO0BtkM8LOVSOdXmFTFYSgSA54
         cQVS+3w0HOe1IuQUfg2/XrFs15kGJsACYaBnd5aAH7OFbqasStRC8Ylm37+GB+gToN
         O6B9Bzh9S2z6cIBm430qcs9TvHVwizKnCDKtZA0o=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14EL7jHo018253
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 14 May 2021 16:07:45 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 14
 May 2021 16:07:45 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 14 May 2021 16:07:45 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14EL7jFC093982;
        Fri, 14 May 2021 16:07:45 -0500
Received: from localhost ([10.250.35.60])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 14EL7j55054624;
        Fri, 14 May 2021 16:07:45 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>
CC:     Gowtham Tammana <g-tammana@ti.com>,
        Praneeth Bajjuri <praneeth@ti.com>,
        Vaibhav Gupta <v_gupta@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 3/3] arm64: dts: ti: k3-am64-main: Enable crypto accelerator
Date:   Fri, 14 May 2021 16:07:24 -0500
Message-ID: <20210514210725.32720-4-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210514210725.32720-1-s-anna@ti.com>
References: <20210514210725.32720-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Peter Ujfalusi <peter.ujfalusi@ti.com>

Add the node for SA2UL including the random number generator.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
[s-anna@ti.com: drop label, minor cleanups]
Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am64-main.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
index b2bcbf23eefd..43f982291350 100644
--- a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
@@ -672,4 +672,23 @@ mailbox0_cluster7: mailbox@29070000 {
 		ti,mbox-num-users = <4>;
 		ti,mbox-num-fifos = <16>;
 	};
+
+	crypto: crypto@40900000 {
+		compatible = "ti,am64-sa2ul";
+		reg = <0x00 0x40900000 0x00 0x1200>;
+		power-domains = <&k3_pds 133 TI_SCI_PD_EXCLUSIVE>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges = <0x00 0x40900000 0x00 0x40900000 0x00 0x30000>;
+		dmas = <&main_pktdma 0xc001 0>, <&main_pktdma 0x4002 0>,
+		       <&main_pktdma 0x4003 0>;
+		dma-names = "tx", "rx1", "rx2";
+
+		rng: rng@40910000 {
+			compatible = "inside-secure,safexcel-eip76";
+			reg = <0x00 0x40910000 0x00 0x7d>;
+			interrupts = <GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&k3_clks 133 0>;
+		};
+	};
 };
-- 
2.30.1

