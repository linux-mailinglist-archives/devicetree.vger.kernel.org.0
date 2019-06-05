Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C22BC36164
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2019 18:34:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728573AbfFEQek (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jun 2019 12:34:40 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:58910 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728591AbfFEQek (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jun 2019 12:34:40 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x55GYaLr079087;
        Wed, 5 Jun 2019 11:34:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1559752476;
        bh=RJ/HyGsxY6DRmkzpCuvHWqeHWUSiKw8sQT8wavtWh6c=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=HPzfdOOjPU+HFlcDtj8yDBpa2+/DyBF2E/BqQcqIkS0daVNz7qVXDh7PndTiFb0jk
         LKBx4YL3dsH7el6sVJ7mNI/O2HhAXEx4fNv0FIfoEgsht8aJBlQwky3ylNwv43r8pf
         aApfmAGWN1QuHh8/W/31ZqqGdq68D+NUVE/mpU4w=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x55GYasH019134
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 5 Jun 2019 11:34:36 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 11:34:36 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 11:34:35 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com [128.247.22.53])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x55GYZmk046187;
        Wed, 5 Jun 2019 11:34:35 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
        by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x55GYZm10214;
        Wed, 5 Jun 2019 11:34:35 -0500 (CDT)
From:   Suman Anna <s-anna@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 2/4] arm64: dts: ti: k3-am65-mcu: Add the MCU RAM node
Date:   Wed, 5 Jun 2019 11:34:32 -0500
Message-ID: <20190605163434.23173-3-s-anna@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190605163434.23173-1-s-anna@ti.com>
References: <20190605163434.23173-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the on-chip SRAM present within the MCU domain as a mmio-sram node.
The K3 AM65x SoCs have 512 KB of such memory. Any specific memory range
within this RAM needed by a software module ought to be reserved using
an appropriate child node.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
index 6f7d2b316ded..afc29eaa2638 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
@@ -17,6 +17,14 @@
 			power-domains = <&k3_pds 149>;
 	};
 
+	mcu_ram: sram@41c00000 {
+		compatible = "mmio-sram";
+		reg = <0x00 0x41c00000 0x00 0x80000>;
+		ranges = <0x0 0x00 0x41c00000 0x80000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+
 	mcu_i2c0: i2c@40b00000 {
 		compatible = "ti,am654-i2c", "ti,omap4-i2c";
 		reg = <0x0 0x40b00000 0x0 0x100>;
-- 
2.21.0

