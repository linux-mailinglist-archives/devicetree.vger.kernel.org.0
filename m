Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C1AC391A33
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 16:30:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234860AbhEZObc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 10:31:32 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:43202 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234823AbhEZOb2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 May 2021 10:31:28 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14QETr4b108570;
        Wed, 26 May 2021 09:29:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1622039393;
        bh=V2SYb6iVrzLpJErT4w9okAsZWhph98sXEr/gFZPp6LA=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=N/VpHJUap7uu1aUVpjwxCurHxac7IiMZkHlSw76ZnlpeySbjAN17CBDTXxuLlGCLJ
         b7ovdPnDKfNefoB3NY6Xv9/yCgGWMRMt0ezpuCW30vh+oy0pE/ROwP6wp9B405p9+0
         boxs3sOyHU3Ykd+wik7ShDfhrbicMc8O9UnXdU4w=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14QETrpT040780
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 26 May 2021 09:29:53 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 26
 May 2021 09:29:53 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 26 May 2021 09:29:53 -0500
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14QETMce030380;
        Wed, 26 May 2021 09:29:50 -0500
From:   Kishon Vijay Abraham I <kishon@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v3 5/5] arm64: dts: ti: k3-am642-sk: Disable PCIe
Date:   Wed, 26 May 2021 19:59:21 +0530
Message-ID: <20210526142921.12127-6-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210526142921.12127-1-kishon@ti.com>
References: <20210526142921.12127-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

AM642-SK has no PCIe slot. Disable it here.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am642-sk.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am642-sk.dts b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
index 077b87656fbc..40124007259d 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
@@ -367,3 +367,11 @@
 &mailbox0_cluster7 {
 	status = "disabled";
 };
+
+&pcie0_rc {
+	status = "disabled";
+};
+
+&pcie0_ep {
+	status = "disabled";
+};
-- 
2.17.1

