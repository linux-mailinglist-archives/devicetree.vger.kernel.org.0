Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3497E2615BC
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 18:55:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731893AbgIHQXI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 12:23:08 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:55106 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731827AbgIHQXF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 12:23:05 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 088GN3O4078045;
        Tue, 8 Sep 2020 11:23:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599582183;
        bh=+Jpo9HPdbBcj89V8tLizQkr/WBBXN2W4ktu4GFLrNDw=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=o9OApEAXb373LzfFXhDc+EesBLUWzFN0E/dxN3pAcmwLaeb1UzBPPI9tjK2CdE0ET
         9YlsVpJ1+nw7Tl3GJCJukwyj/+uQl6d366PiZvzFR0X8LSqc/JHh+BY5Ed35iyFaSk
         N9KaNkJ0aV/AOvNyWFwI9GMY/E+FFNPiq3lQvCds=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 088GN28p027248
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 8 Sep 2020 11:23:03 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 8 Sep
 2020 11:23:01 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 8 Sep 2020 11:23:01 -0500
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 088GMqAo044781;
        Tue, 8 Sep 2020 11:22:58 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Suman Anna <s-anna@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v3 1/5] arm64: dts: ti: Makefile: Use ARCH_K3 for building dtbs
Date:   Tue, 8 Sep 2020 21:52:48 +0530
Message-ID: <20200908162252.17672-2-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200908162252.17672-1-lokeshvutla@ti.com>
References: <20200908162252.17672-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To allow lesser dependency and better maintainability use CONFIG_ARCH_K3
for building dtbs for all K3 based devices. This is as per the
discussion in [0].

[0] https://lore.kernel.org/linux-arm-kernel/20200908112534.t5bgrjf7y3a6l2ss@akan/

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 arch/arm64/boot/dts/ti/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index 05c0bebf65d4..e7bfb16fa816 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -6,6 +6,6 @@
 # Copyright (C) 2016-2018 Texas Instruments Incorporated - https://www.ti.com/
 #
 
-dtb-$(CONFIG_ARCH_K3_AM6_SOC) += k3-am654-base-board.dtb
+dtb-$(CONFIG_ARCH_K3) += k3-am654-base-board.dtb
 
-dtb-$(CONFIG_ARCH_K3_J721E_SOC) += k3-j721e-common-proc-board.dtb
+dtb-$(CONFIG_ARCH_K3) += k3-j721e-common-proc-board.dtb
-- 
2.28.0

