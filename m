Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4BD1429EDF3
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 15:12:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726062AbgJ2OMO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 10:12:14 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:50352 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725300AbgJ2OMO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 10:12:14 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09TEC5KO092013;
        Thu, 29 Oct 2020 09:12:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603980725;
        bh=xrwm/5vA/APgxCck/pXIFCKeJE7CMAQT9x8VIfmW2ao=;
        h=From:To:CC:Subject:Date;
        b=ezuZPPwQBkp7svlGvmFO93ZdLxoWUFtTJe9GtRH2H6zRfzZFtddQVi1H1sSDL2ie9
         MHANuxjp+p3bf5NSgrpcuTBH0MYg3xkret6MbjRLy1oMWGgjtd+ql2rN6QcE7wMBZu
         qPZg3raWt0q9rMs/bY3J+04ouY8rMt0GI3XSwGyY=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09TEC4No059941
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 29 Oct 2020 09:12:04 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 29
 Oct 2020 09:12:04 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 29 Oct 2020 09:12:04 -0500
Received: from deskari.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09TEC20E045625;
        Thu, 29 Oct 2020 09:12:02 -0500
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
        Nikhil Devshatwar <nikhil.nd@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-am65: mark dss as dma-coherent
Date:   Thu, 29 Oct 2020 16:11:59 +0200
Message-ID: <20201029141159.190621-1-tomi.valkeinen@ti.com>
X-Mailer: git-send-email 2.25.1
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

Sending separately as requested.

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

