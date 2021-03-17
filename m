Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A36C433FBB5
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 00:11:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229766AbhCQXKh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Mar 2021 19:10:37 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:46316 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229562AbhCQXKK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Mar 2021 19:10:10 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12HNA3nZ024262;
        Wed, 17 Mar 2021 18:10:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1616022603;
        bh=itOsUKLWZxt8Ol6qV8N7knx2K296ltsJ56tAqdwDn1g=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=ngH3h8ehPKl469xKTbfZpq8MU4LUVwShS57Ag7Tkx4m/ItOF+M/L4dcsxNJACafvf
         QeN3cdbE7Dmoyh+9wyjrYp9NpfhXydB7B0fwKe20gQR6MRYrIeqzxqVVZXiVBg7T/u
         +E4gDQhmG2dkWORRVgDA0azOD28Lqroas9j/hJTQ=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12HNA2cf023134
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 17 Mar 2021 18:10:03 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 17
 Mar 2021 18:10:02 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 17 Mar 2021 18:10:02 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12HNA2Pr118704;
        Wed, 17 Mar 2021 18:10:02 -0500
Received: from localhost ([10.250.32.139])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 12HNA2uV002669;
        Wed, 17 Mar 2021 18:10:02 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 1/4] arm64: dts: ti: k3-am64-main: Add hwspinlock node
Date:   Wed, 17 Mar 2021 18:09:43 -0500
Message-ID: <20210317230946.23675-2-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210317230946.23675-1-s-anna@ti.com>
References: <20210317230946.23675-1-s-anna@ti.com>
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
---
 arch/arm64/boot/dts/ti/k3-am64-main.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
index 7e7997e3adff..96a19d4be9d5 100644
--- a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
@@ -521,4 +521,10 @@ usb0: usb@f400000{
 			dr_mode = "otg";
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

