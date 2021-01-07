Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAE2A2ED6CE
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 19:40:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726073AbhAGSk2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 13:40:28 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:47622 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726064AbhAGSk2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 13:40:28 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 107Idkvl064768;
        Thu, 7 Jan 2021 12:39:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1610044786;
        bh=X+T3uFLat4cxiiYc6XnZez1Z0WBDGQ/Td6WHEVBQKXw=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=hVl5yfU3PpFDz/Y3shzp6v4R2szgNKLzNCbcsjNcmFRGUhoqEpv/lN+QseVCb5zLT
         V3IZy5q4AvK9TYn2JrXykxEYgKg90HWvyw6vfd+9RcDukgm07W0vAgHb28yFpWoT0O
         gMmGz6bftM4WHsNQtuQPXNSszj89bpc/eJuNYZ4U=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 107IdkvF032525
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 7 Jan 2021 12:39:46 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 7 Jan
 2021 12:39:45 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 7 Jan 2021 12:39:45 -0600
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 107Idjmg096745;
        Thu, 7 Jan 2021 12:39:45 -0600
Received: from localhost ([10.250.33.36])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 107Idjxj128972;
        Thu, 7 Jan 2021 12:39:45 -0600
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 5/5] arm64: dts: ti: k3-j7200-som-p0: Reserve memory for IPC between RTOS cores
Date:   Thu, 7 Jan 2021 12:39:07 -0600
Message-ID: <20210107183907.6545-6-s-anna@ti.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210107183907.6545-1-s-anna@ti.com>
References: <20210107183907.6545-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a reserved memory node to reserve a portion of the DDR memory to be
used for performing inter-processor communication between all the remote
processors running RTOS on the TI J7200 EVM boards. 8 MB of memory is
reserved for this purpose, and this accounts for all the vrings and vring
buffers between all the possible pairs of remote processors.

NOTE:
The J7200 SoCs have no DSPs and one less R5F cluster compared to J721E
SoCs. So, while the carveout memories reserved for the R5F clusters
present on the SoC match to those on J721E, the overall memory map
reserved for firmwares is quite different.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
index 69db8e77f659..a988e2ab2ba1 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
@@ -73,6 +73,12 @@ main_r5fss0_core1_memory_region: r5f-memory@a3100000 {
 			reg = <0x00 0xa3100000 0x00 0xf00000>;
 			no-map;
 		};
+
+		rtos_ipc_memory_region: ipc-memories@a4000000 {
+			reg = <0x00 0xa4000000 0x00 0x00800000>;
+			alignment = <0x1000>;
+			no-map;
+		};
 	};
 };
 
-- 
2.29.2

