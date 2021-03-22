Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0D2A344F4A
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 19:55:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230393AbhCVSzK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 14:55:10 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:48484 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232137AbhCVSyl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Mar 2021 14:54:41 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12MIsY4v041991;
        Mon, 22 Mar 2021 13:54:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1616439274;
        bh=at9D+epvxqJRiJx1gp7/YbKAENVgMcmU7iiha4Ya0vk=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=ezqc/ZAU11kro1/0srSglKhoM0/IauBVnB4p/Y9jryRX6pITIyJO86LKAmTvPfWCu
         Wki0TU6GPx5SaPHWOX97xZggTnhSISz/9pmm5ZEApZoRlnjfjBuz5cHWgIG/A5ULAS
         z8+mCYf1erpRrSTXj4t3Swko5bIJ5/2u2Ww1uuYc=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12MIsYqA057288
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 22 Mar 2021 13:54:34 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 22
 Mar 2021 13:54:34 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 22 Mar 2021 13:54:34 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12MIsY4Q059119;
        Mon, 22 Mar 2021 13:54:34 -0500
Received: from localhost ([10.250.66.107])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 12MIsYWd019557;
        Mon, 22 Mar 2021 13:54:34 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>
CC:     Gowtham Tammana <g-tammana@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH v2 1/3] arm64: dts: ti: k3-am64-main: Add hwspinlock node
Date:   Mon, 22 Mar 2021 13:54:28 -0500
Message-ID: <20210322185430.957-2-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210322185430.957-1-s-anna@ti.com>
References: <20210322185430.957-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The AM64x SoC contains a HwSpinlock IP instance that is a minor variant
of the IP on existing TI K3 SoCs such as AM65x, J721E or J7200 SoCs.
Add the DT node for this on AM64x SoCs. The node is present within the
MAIN domain, and is added as a child node under the cbass_main node.

Signed-off-by: Suman Anna <s-anna@ti.com>
Reviewed-by: Gowtham Tammana <g-tammana@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am64-main.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
index a03b66456062..b34b98969b47 100644
--- a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
@@ -563,4 +563,10 @@ ospi0: spi@fc40000 {
 			power-domains = <&k3_pds 75 TI_SCI_PD_EXCLUSIVE>;
 		};
 	};
+
+	hwspinlock: spinlock@2a000000 {
+		compatible = "ti,am64-hwspinlock";
+		reg = <0x00 0x2a000000 0x00 0x1000>;
+		#hwlock-cells = <1>;
+	};
 };
-- 
2.30.1

