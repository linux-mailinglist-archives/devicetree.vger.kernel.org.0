Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CDAEC36162
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2019 18:34:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728574AbfFEQej (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jun 2019 12:34:39 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:57868 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728523AbfFEQej (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jun 2019 12:34:39 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x55GYa0B130363;
        Wed, 5 Jun 2019 11:34:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1559752476;
        bh=wkkKxFZB5ATR3iI5BpVHTwbE/nxd3PuOQtF6M46CXMg=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=PXAhTydyFcEWe9DEJEnl4VJl6QnFED4Yo9iNZazn971xCdPOFvndnIrhLFCG8Z6Qp
         ziFyEAp5u+Pjk5mNUoPazqiFAiIJBGgyP4RWbgmME2j3dTvi/vMgWu7wHkBjSzXgXM
         agUEMiTUobXkZwVpDNZfv4OI4LJ9I/tQfnMIcX7s=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x55GYah4096059
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 5 Jun 2019 11:34:36 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 11:34:36 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 11:34:36 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com [128.247.22.53])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x55GYaan023930;
        Wed, 5 Jun 2019 11:34:36 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
        by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x55GYZm10218;
        Wed, 5 Jun 2019 11:34:35 -0500 (CDT)
From:   Suman Anna <s-anna@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 3/4] arm64: dts: ti: k3-j721e: Add the MCU SRAM node
Date:   Wed, 5 Jun 2019 11:34:33 -0500
Message-ID: <20190605163434.23173-4-s-anna@ti.com>
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
The K3 J721E SoCs have 1 MB of such memory. Any specific memory range
within this RAM needed by a driver/software module ought to be reserved
using an appropriate child node.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
index b72e033fa159..397ef715e145 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
@@ -44,6 +44,14 @@
 		pinctrl-single,function-mask = <0xffffffff>;
 	};
 
+	mcu_ram: sram@41c00000 {
+		compatible = "mmio-sram";
+		reg = <0x00 0x41c00000 0x00 0x100000>;
+		ranges = <0x0 0x00 0x41c00000 0x100000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+
 	wkup_uart0: serial@42300000 {
 		compatible = "ti,j721e-uart", "ti,am654-uart";
 		reg = <0x00 0x42300000 0x00 0x100>;
-- 
2.21.0

