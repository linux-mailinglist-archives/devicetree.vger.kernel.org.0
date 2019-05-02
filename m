Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9F207116AA
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2019 11:42:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726302AbfEBJl6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 May 2019 05:41:58 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:60382 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726268AbfEBJl6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 May 2019 05:41:58 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x429fqs4002366;
        Thu, 2 May 2019 04:41:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1556790112;
        bh=baKkdztIBJAcqzVYBMwzqyJnlftV72906oj1N8WLkW4=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=bOYfOZWnNwDPCmDbaXHBnbEFjyjBH4idRuTnUn42VZo07SoXA4jNL//MYeXS9CHyt
         RxOlHXN6mifzWfKODZSTMq/hXeav2d7zP2tbr4Bc6KVjUM086htOzfETYdMFPO2yeb
         lOGaebVTFADuX+UAIvNlCmgRtdyYrsF517divWCA=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x429fqCq048692
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 2 May 2019 04:41:52 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 2 May
 2019 04:41:51 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 2 May 2019 04:41:51 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x429fkS0038664;
        Thu, 2 May 2019 04:41:49 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH 1/3] arm64: dts: ti: k3-am654: Update compatible for dmsc
Date:   Thu, 2 May 2019 15:11:17 +0530
Message-ID: <20190502094119.16350-2-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190502094119.16350-1-lokeshvutla@ti.com>
References: <20190502094119.16350-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use the am654 specific compatible for dmsc. This allows to use
the am654 specific RM mapping table.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
index 7cbdc0912ab7..75310bcfb94b 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
@@ -7,7 +7,7 @@
 
 &cbass_wakeup {
 	dmsc: dmsc {
-		compatible = "ti,k2g-sci";
+		compatible = "ti,am654-sci";
 		ti,host-id = <12>;
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
2.21.0

