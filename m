Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4DEA336163
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2019 18:34:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726421AbfFEQek (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jun 2019 12:34:40 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:57874 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728573AbfFEQek (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jun 2019 12:34:40 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x55GYaY1130359;
        Wed, 5 Jun 2019 11:34:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1559752476;
        bh=KUPgZFxEYXJVvTARjgbF0I31mcTUIGf5vw48nP64GK8=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=gow6AJMsYcdPwAz5xMJTyHmOnFJUXGnolX/Pz7NNX9mC+fKF+h5pHCDtQEZO5qYmU
         kQRnF4XL9b9sl1++4XBwzLLk2J3IvpVItWCBmUegESjZAUXWfFQeqSJc+tGF8i+gJV
         CoeDIFeOqewMZ9P/gBURt6JUjvRxPugg5TN7pDKE=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x55GYaxJ019127
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 5 Jun 2019 11:34:36 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 11:34:35 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 11:34:35 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com [128.247.22.53])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x55GYZF7098238;
        Wed, 5 Jun 2019 11:34:35 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
        by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x55GYZm10210;
        Wed, 5 Jun 2019 11:34:35 -0500 (CDT)
From:   Suman Anna <s-anna@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 1/4] arm64: dts: ti: k3-am65: Add MCU SRAM ranges in interconnect nodes
Date:   Wed, 5 Jun 2019 11:34:31 -0500
Message-ID: <20190605163434.23173-2-s-anna@ti.com>
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

Add the address space for the MCU SRAM memory to the ranges property
of the cbass_mcu interconnect node so that the addresses within the
mcu_sram nodes and its children can be translated properly by the
relevant OF address API.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65.dtsi b/arch/arm64/boot/dts/ti/k3-am65.dtsi
index 68b3f954f1d1..abb085f5e784 100644
--- a/arch/arm64/boot/dts/ti/k3-am65.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65.dtsi
@@ -72,6 +72,7 @@
 			 /* MCUSS Range */
 			 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
 			 <0x00 0x40200000 0x00 0x40200000 0x00 0x00900100>,
+			 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00080000>,
 			 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>,
 			 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>,
 			 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>,
@@ -83,6 +84,7 @@
 			#size-cells = <2>;
 			ranges = <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>, /* MCU NAVSS*/
 				 <0x00 0x40200000 0x00 0x40200000 0x00 0x00900100>, /* First peripheral window */
+				 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00080000>, /* MCU SRAM */
 				 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>, /* WKUP */
 				 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>, /* MMRs, remaining NAVSS */
 				 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>, /* CPSW */
-- 
2.21.0

