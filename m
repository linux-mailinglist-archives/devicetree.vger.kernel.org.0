Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51B7629EB22
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 12:58:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725887AbgJ2L6o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 07:58:44 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:38516 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725710AbgJ2L6o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 07:58:44 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09T3cbWc078045;
        Wed, 28 Oct 2020 22:38:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603942717;
        bh=c65QcXOKBNxijG6wpwx55S66PudCbdlViqddnvVxxKU=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=WCREM9FXiK2w2PJeJEeuWh1j32XrfO8vn60TK8nkl8oE835UBxOxYmaU7XZoPJmjn
         MDV0auTiFWDL7BQu5tmUFdVtzlySz4T7YSETsTJwKEMsBdJF/BVsCcRuBm/SuA8+Cb
         seR5MIZgjnzkhItSuRjJuDJUUriuXbnYtXkwPugo=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09T3cb5s005098
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 28 Oct 2020 22:38:37 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 28
 Oct 2020 22:38:36 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 28 Oct 2020 22:38:36 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09T3caxt014939;
        Wed, 28 Oct 2020 22:38:36 -0500
Received: from localhost ([10.250.39.72])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 09T3cajD113595;
        Wed, 28 Oct 2020 22:38:36 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 4/8] arm64: dts: ti: k3-am654-base-board: Reserve memory for IPC between R5F cores
Date:   Wed, 28 Oct 2020 22:37:58 -0500
Message-ID: <20201029033802.15366-5-s-anna@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201029033802.15366-1-s-anna@ti.com>
References: <20201029033802.15366-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a reserved memory node to reserve a portion of the DDR memory to be
used for performing inter-processor communication between all the MCU R5F
remote processors running RTOS on all the TI AM654 boards. This memory
shall be exercised only if the MCU R5FSS cluster is configured for Split
mode.  A single 1 MB of memory at 0xa2000000 is reserved for this purpose,
and this accounts for all the vrings and vring buffers between pair of
these R5F remote processors.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am654-base-board.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
index 23a1f266d1d4..17f3a85360e6 100644
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -59,6 +59,12 @@ mcu_r5fss0_core1_memory_region: r5f-memory@a1100000 {
 			reg = <0 0xa1100000 0 0xf00000>;
 			no-map;
 		};
+
+		rtos_ipc_memory_region: ipc-memories@a2000000 {
+			reg = <0x00 0xa2000000 0x00 0x00100000>;
+			alignment = <0x1000>;
+			no-map;
+		};
 	};
 
 	gpio-keys {
-- 
2.28.0

