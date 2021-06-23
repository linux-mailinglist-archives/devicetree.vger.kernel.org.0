Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF3943B1F00
	for <lists+devicetree@lfdr.de>; Wed, 23 Jun 2021 18:50:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229726AbhFWQw7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Jun 2021 12:52:59 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:56994 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbhFWQw7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Jun 2021 12:52:59 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15NGoXeO035171;
        Wed, 23 Jun 2021 11:50:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1624467033;
        bh=Nl6doW6SZb+SvN9v8V6oAFjmAdBM8dfLp0BNpc2cs2Y=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=kGH8y5K6brSAj5SjWx0Zi+prKlFJSF74zGDjzrp7K9wF9E/ksWNAPFipoTrdI5oYu
         guGXEax/FifNe+rA2ZdUPEyvS4FK6q1wvHfwCkpWykmeddn3zvdA4VN0FcDnT97AQr
         Ag/UIDiteXjmqQXZ52qMluYlRyUvbNVPEeyR+I8w=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15NGoXLo002168
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 23 Jun 2021 11:50:33 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 23
 Jun 2021 11:50:33 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 23 Jun 2021 11:50:32 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15NGoWZ8051412;
        Wed, 23 Jun 2021 11:50:32 -0500
Received: from localhost ([10.250.33.41])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 15NGoWc5006925;
        Wed, 23 Jun 2021 11:50:32 -0500
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
Subject: [PATCH 1/2] dt-bindings: soc: ti: pruss: Update bindings for K3 AM64x SoCs
Date:   Wed, 23 Jun 2021 11:50:31 -0500
Message-ID: <20210623165032.31223-2-s-anna@ti.com>
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

The K3 AM64x SoCs also have the Gigabit Ethernet capable PRU-ICSS IP
that is present on existing K3 AM65x and J721E SoCs (ICSSG). The IP
is similar to the ones used on K3 J721E or AM65x SR2.0 SoCs.

Update the PRUSS bindings for these ICSSG instances.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
index dbc62821c60b..c5ec253c45d5 100644
--- a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
+++ b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
@@ -68,6 +68,7 @@ properties:
       - ti,k2g-pruss     # for 66AK2G SoC family
       - ti,am654-icssg   # for K3 AM65x SoC family
       - ti,j721e-icssg   # for K3 J721E SoC family
+      - ti,am642-icssg   # for K3 AM64x SoC family
 
   reg:
     maxItems: 1
@@ -233,8 +234,8 @@ patternProperties:
     description: |
       Industrial Ethernet Peripheral to manage/generate Industrial Ethernet
       functions such as time stamping. Each PRUSS has either 1 IEP (on AM335x,
-      AM437x, AM57xx & 66AK2G SoCs) or 2 IEPs (on K3 AM65x & J721E SoCs ). IEP
-      is used for creating PTP clocks and generating PPS signals.
+      AM437x, AM57xx & 66AK2G SoCs) or 2 IEPs (on K3 AM65x, J721E & AM64x SoCs).
+      IEP is used for creating PTP clocks and generating PPS signals.
 
     type: object
 
@@ -333,6 +334,7 @@ if:
           - ti,k2g-pruss
           - ti,am654-icssg
           - ti,j721e-icssg
+          - ti,am642-icssg
 then:
   required:
     - power-domains
-- 
2.30.1

