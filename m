Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5DB272E725
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2019 23:13:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726408AbfE2VNz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 May 2019 17:13:55 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:51894 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726189AbfE2VNz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 May 2019 17:13:55 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4TLDnc3011365;
        Wed, 29 May 2019 16:13:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1559164429;
        bh=UtfU/8233aUmiqr/3DAdlqIZFtCoTeyL2Sth6JDKYVY=;
        h=From:To:CC:Subject:Date;
        b=hrzvBo3kTOZd3dPKYEcsPSf9u+AYiOc/9/Y8FWHPrfeH775H9jeTU4tTWJ1XA2Gm3
         bunCbkZ4wRRu115eAwbK+Mh22QoLTkz2QVHy2xLcAmucSi8oyzWfyCgplznAaPd98G
         AFj+TB6BEHwAaRqT7Q9hvcrIeSxR5MFcJi7LrWJI=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4TLDnDI016010
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 29 May 2019 16:13:49 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 29
 May 2019 16:13:49 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 29 May 2019 16:13:49 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com [128.247.22.53])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4TLDnEu015680;
        Wed, 29 May 2019 16:13:49 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
        by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x4TLDnm04056;
        Wed, 29 May 2019 16:13:49 -0500 (CDT)
From:   Suman Anna <s-anna@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Roger Quadros <rogerq@ti.com>, Suman Anna <s-anna@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-am65: Add MSMC RAM ranges in interconnect node
Date:   Wed, 29 May 2019 16:13:44 -0500
Message-ID: <20190529211344.18014-1-s-anna@ti.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Roger Quadros <rogerq@ti.com>

Add the MSCM RAM address space to the ranges property of the cbass_main
interconnect node so that the addresses can be translated properly.

This fixes the probe failure in the sram driver for the MSMC RAM node.

Signed-off-by: Roger Quadros <rogerq@ti.com>
Signed-off-by: Suman Anna <s-anna@ti.com>
---

The following error message is seen without this:
[    0.480261] sram interconnect@100000:sram@70000000: found no memory resource
[    0.487497] sram: probe of interconnect@100000:sram@70000000 failed with error -22

regards
Suman

 arch/arm64/boot/dts/ti/k3-am65.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65.dtsi b/arch/arm64/boot/dts/ti/k3-am65.dtsi
index 50f4be2047a9..68b3f954f1d1 100644
--- a/arch/arm64/boot/dts/ti/k3-am65.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65.dtsi
@@ -68,6 +68,7 @@
 			 <0x00 0x00900000 0x00 0x00900000 0x00 0x00012000>, /* serdes */
 			 <0x00 0x01000000 0x00 0x01000000 0x00 0x0af02400>, /* Most peripherals */
 			 <0x00 0x30800000 0x00 0x30800000 0x00 0x0bc00000>, /* MAIN NAVSS */
+			 <0x00 0x70000000 0x00 0x70000000 0x00 0x00200000>, /* MSMC SRAM */
 			 /* MCUSS Range */
 			 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
 			 <0x00 0x40200000 0x00 0x40200000 0x00 0x00900100>,
-- 
2.21.0

