Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 924363B1F01
	for <lists+devicetree@lfdr.de>; Wed, 23 Jun 2021 18:50:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229801AbhFWQxC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Jun 2021 12:53:02 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:56996 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbhFWQxB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Jun 2021 12:53:01 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15NGocL1035207;
        Wed, 23 Jun 2021 11:50:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1624467038;
        bh=Yu9++HAKBNF86v+Q+7haw63NGpMv907DjnMqVDQ9+Rk=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=jodLlwAsVOngLCWxQagC1hIbmYuhi6W6a5ZzZoWrdIBq1qp+iNnMCiOC2nfmyQGMJ
         mZzOYzI8EOJMuG3W3Iw2b1LaDCYbnTSKPIq70H19JLzOm2CTDYwVg4NjJMd0fTdqOG
         3u0Woy8AxKNQzpMTI+24lY8iuMJGM+cSYZWOy2GU=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15NGocvN026638
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 23 Jun 2021 11:50:38 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 23
 Jun 2021 11:50:37 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 23 Jun 2021 11:50:37 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15NGobDK050457;
        Wed, 23 Jun 2021 11:50:37 -0500
Received: from localhost ([10.250.33.41])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 15NGobaW006942;
        Wed, 23 Jun 2021 11:50:37 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 2/2] soc: ti: pruss: Enable support for ICSSG subsystems on K3 AM64x SoCs
Date:   Wed, 23 Jun 2021 11:50:32 -0500
Message-ID: <20210623165032.31223-3-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210623165032.31223-1-s-anna@ti.com>
References: <20210623165032.31223-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The K3 AM64x family of SoCs have a similar version of the PRU-ICSS (ICSSG)
processor subsystem present on K3 J721E and K3 AM65x SR2.0 SoCs. These SoCs
contain typically two ICSSG instances named ICSSG0 and ICSSG1. The two
ICSSGs are identical to each other for the most part with minor SoC
integration differences and capabilities. SGMII mode is not supported at
all on these SoCs (unlike specific instances on AM65x, J721E). The ICSSG1
also has limited pins connected on some sub-modules compared to ICSSG0.

There is no change in the Interrupt Controller w.r.t either of AM65x or
J721E SoCs. All other integration aspects are also very similar to the
existing SoCs.

The existing pruss platform driver has been updated to support these
similar ICSSG instances through a new AM64x specific compatible.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 drivers/soc/ti/pruss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/ti/pruss.c b/drivers/soc/ti/pruss.c
index afc8aae68035..b36779309e49 100644
--- a/drivers/soc/ti/pruss.c
+++ b/drivers/soc/ti/pruss.c
@@ -338,6 +338,7 @@ static const struct of_device_id pruss_of_match[] = {
 	{ .compatible = "ti,k2g-pruss" },
 	{ .compatible = "ti,am654-icssg", .data = &am65x_j721e_pruss_data, },
 	{ .compatible = "ti,j721e-icssg", .data = &am65x_j721e_pruss_data, },
+	{ .compatible = "ti,am642-icssg", .data = &am65x_j721e_pruss_data, },
 	{},
 };
 MODULE_DEVICE_TABLE(of, pruss_of_match);
-- 
2.30.1

