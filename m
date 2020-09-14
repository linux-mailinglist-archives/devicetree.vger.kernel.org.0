Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 352DB26915C
	for <lists+devicetree@lfdr.de>; Mon, 14 Sep 2020 18:23:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726424AbgINQXN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Sep 2020 12:23:13 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:35240 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726453AbgINQXG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Sep 2020 12:23:06 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08EGMe8o093389;
        Mon, 14 Sep 2020 11:22:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1600100560;
        bh=5rNV1meMn6UPk6WphXCAvoUBoK378bD0BCnPESYL4vo=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=C1dj6ORNd6mTBC5vWtMNNzxONN9PMLNJUNUp/uhFKirr6aWy+n7ESl3/lXXsp3WHz
         rZXayk2dakRAxtxDqkD8X4r6j5VKguKhoxi23vJsozH7KGF5gmMm2kCh5kar/dS4Ez
         lGpmtUmAkf9A/uG7ZzIsVzwidkPJyaKokYGAvFqM=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08EGMeMP037003
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 14 Sep 2020 11:22:40 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 14
 Sep 2020 11:22:39 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 14 Sep 2020 11:22:39 -0500
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08EGMW6a088296;
        Mon, 14 Sep 2020 11:22:36 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Suman Anna <s-anna@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v4 1/5] arm64: dts: ti: Makefile: Use ARCH_K3 for building dtbs
Date:   Mon, 14 Sep 2020 21:52:27 +0530
Message-ID: <20200914162231.2535-2-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200914162231.2535-1-lokeshvutla@ti.com>
References: <20200914162231.2535-1-lokeshvutla@ti.com>
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
 arch/arm64/boot/dts/ti/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index 05c0bebf65d4..7f28be62b8da 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -3,9 +3,9 @@
 # Make file to build device tree binaries for boards based on
 # Texas Instruments Inc processors
 #
-# Copyright (C) 2016-2018 Texas Instruments Incorporated - https://www.ti.com/
+# Copyright (C) 2016-2020 Texas Instruments Incorporated - https://www.ti.com/
 #
 
-dtb-$(CONFIG_ARCH_K3_AM6_SOC) += k3-am654-base-board.dtb
+dtb-$(CONFIG_ARCH_K3) += k3-am654-base-board.dtb
 
-dtb-$(CONFIG_ARCH_K3_J721E_SOC) += k3-j721e-common-proc-board.dtb
+dtb-$(CONFIG_ARCH_K3) += k3-j721e-common-proc-board.dtb
-- 
2.28.0

