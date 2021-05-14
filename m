Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5C2C381296
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 23:07:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229932AbhENVIx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 17:08:53 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:48612 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229927AbhENVIw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 17:08:52 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14EL7Zad064467;
        Fri, 14 May 2021 16:07:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1621026455;
        bh=dOuJz1Mbk6lns6dFMdrcpJpGjQMkzSjkov4oe6l7s24=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=mvADtUcXMmAutwqdW64RKXQJbHzFEfW9M7ZBq8DqorS3lgf8h7CKtEEKlx6m2cEQK
         JCvp2nAN7nzDhqcNPfwX0fq21VzQetRlCVm5Y2jUgzkp7ukpez0vlxZhPIOcGcEYQl
         /YftONzU1XJRpHuITlwCZJYLBa/xuvEuEliYWqy0=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14EL7ZVY030105
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 14 May 2021 16:07:35 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 14
 May 2021 16:07:35 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 14 May 2021 16:07:35 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14EL7ZIK054122;
        Fri, 14 May 2021 16:07:35 -0500
Received: from localhost ([10.250.35.60])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 14EL7ZT8054608;
        Fri, 14 May 2021 16:07:35 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>
CC:     Gowtham Tammana <g-tammana@ti.com>,
        Praneeth Bajjuri <praneeth@ti.com>,
        Vaibhav Gupta <v_gupta@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 1/3] arm64: dts: ti: k3-j7200-mcu: Add the mcu sa2ul crypto node
Date:   Fri, 14 May 2021 16:07:22 -0500
Message-ID: <20210514210725.32720-2-s-anna@ti.com>
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

Add sa2ul crypto accelarator node.
In comparision to j721e, The sa2ul crypto device on j7200
has moved to mcu domain and is available for linux usage as
a shared device.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
[praneeth@ti.com: picked recommendation from author to
k3-j7200-mcu-wakeup.dtsi and verified functionality]
Signed-off-by: Praneeth Bajjuri <praneeth@ti.com>
Signed-off-by: Gowtham Tammana <g-tammana@ti.com>
[s-anna@ti.com: minor formatting cleanups]
Signed-off-by: Suman Anna <s-anna@ti.com>
---
 .../boot/dts/ti/k3-j7200-mcu-wakeup.dtsi      | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
index 5e74e43822c3..f24bd4af62c8 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
@@ -380,4 +380,24 @@ mcu_r5fss0_core1: r5f@41400000 {
 			ti,loczrama = <1>;
 		};
 	};
+
+	mcu_crypto: crypto@40900000 {
+		compatible = "ti,j721e-sa2ul";
+		reg = <0x00 0x40900000 0x00 0x1200>;
+		power-domains = <&k3_pds 265 TI_SCI_PD_SHARED>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges = <0x00 0x40900000 0x00 0x40900000 0x00 0x30000>;
+		dmas = <&mcu_udmap 0xf501>, <&mcu_udmap 0x7502>,
+		       <&mcu_udmap 0x7503>;
+		dma-names = "tx", "rx1", "rx2";
+		dma-coherent;
+
+		rng: rng@40910000 {
+			compatible = "inside-secure,safexcel-eip76";
+			reg = <0x00 0x40910000 0x00 0x7d>;
+			interrupts = <GIC_SPI 945 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&k3_clks 265 1>;
+		};
+	};
 };
-- 
2.30.1

