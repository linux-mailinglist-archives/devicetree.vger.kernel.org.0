Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 46CD386485
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 16:39:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729780AbfHHOjk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 10:39:40 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:45268 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732377AbfHHOjk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 10:39:40 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x78Edamc126890;
        Thu, 8 Aug 2019 09:39:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1565275176;
        bh=R8f4LigV/zer64/mA1KWQ7HeQ4LPBkXkbQv79jKLYo0=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=U/vXzQfTXiiVTfR0IDwFM3NeehyN+JUc4OFkXq0YLnftW1an8eyE9SHPFsqIN+bzC
         HCxMRPqjCRMexRZrMlXvqWjdSMuqlqVVmauP/4yHhPKVBHUDgAbakmPQcjYAILPePT
         rKSYajkjzUaMagHgUy6rdCdwF5nhN8wd4/tSS+7c=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x78Edaie118578
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 8 Aug 2019 09:39:36 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 8 Aug
 2019 09:39:35 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 8 Aug 2019 09:39:35 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com [128.247.22.53])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x78EdZUf037782;
        Thu, 8 Aug 2019 09:39:35 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
        by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x78EdZZ25405;
        Thu, 8 Aug 2019 09:39:35 -0500 (CDT)
From:   Suman Anna <s-anna@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>,
        Robert Tivy <rtivy@ti.com>
Subject: [PATCH 1/2] arm64: dts: ti: k3-am65-main: Fix gic-its node unit-address
Date:   Thu, 8 Aug 2019 09:39:28 -0500
Message-ID: <20190808143929.11148-2-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808143929.11148-1-s-anna@ti.com>
References: <20190808143929.11148-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The gic-its node unit-address has an additional zero compared
to the actual reg value. Fix it.

Fixes: ea47eed33a3f ("arm64: dts: ti: Add Support for AM654 SoC")
Reported-by: Robert Tivy <rtivy@ti.com>
Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index ca70ff73f171..38c75fb3f232 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -42,7 +42,7 @@
 		 */
 		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 
-		gic_its: gic-its@18200000 {
+		gic_its: gic-its@1820000 {
 			compatible = "arm,gic-v3-its";
 			reg = <0x00 0x01820000 0x00 0x10000>;
 			socionext,synquacer-pre-its = <0x1000000 0x400000>;
-- 
2.22.0

