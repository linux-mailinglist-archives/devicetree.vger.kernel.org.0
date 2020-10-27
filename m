Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C280329A9EB
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 11:42:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1415446AbgJ0Klx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 06:41:53 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:36716 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2898716AbgJ0Klx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 06:41:53 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09RAfnKE011661;
        Tue, 27 Oct 2020 05:41:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603795309;
        bh=1SlyxQyToiC1BthXM5dCmcdoHRuA1UIayzywqSe4UmU=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=lLY3HzLDYsNsblqFG1eCJWrbY5k91QWVzmtuqcY81iXajyew+c9QJRRYiqo4jyJF3
         g4OFb94J2pwGafN8T5nW3VsiFDySx7vT7V46XDiF5n8SVXAHNsMgG6QD4Lrwd8hX+u
         uPM7qKnKEIGj9o4JYKg2hdZqriXHLbuTRwrtutN0=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09RAfnTC120721
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 27 Oct 2020 05:41:49 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 27
 Oct 2020 05:41:49 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 27 Oct 2020 05:41:49 -0500
Received: from deskari.lan (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09RAfd6C110982;
        Tue, 27 Oct 2020 05:41:47 -0500
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Swapnil Jakhade <sjakhade@cadence.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: [PATCH 3/4] arm64: dts: ti: k3-am65: mark dss as dma-coherent
Date:   Tue, 27 Oct 2020 12:41:31 +0200
Message-ID: <20201027104132.105485-4-tomi.valkeinen@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201027104132.105485-1-tomi.valkeinen@ti.com>
References: <20201027104132.105485-1-tomi.valkeinen@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DSS is IO coherent on AM65, so we can mark it as such with
'dma-coherent' property in the DT file.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 533525229a8d..a0b4a421026f 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -867,6 +867,8 @@ dss: dss@04a00000 {
 
 		status = "disabled";
 
+		dma-coherent;
+
 		dss_ports: ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

