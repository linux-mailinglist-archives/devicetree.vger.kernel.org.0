Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1ED1730B96A
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 09:18:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232366AbhBBIQw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 03:16:52 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:50984 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232433AbhBBIQg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 03:16:36 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1128Fdk8043577;
        Tue, 2 Feb 2021 02:15:39 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1612253739;
        bh=/zfwdmtsgCbwF7EOU7kqKpOd0qWZrVEFZl/4CTCfS4c=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=OTCtPYoYOu9L/3AYCAvPrmIGDMxrVZ1mN559TZ74eOnUnlCqd6Kuocogurr58SVqg
         +L2SAklEdwmZftjTq5YgnNuv3ZMJgyhIsHxHHLzTntG4N8J5momXp/bZVXQ8hM2RU+
         sixLdvGlkO4HyH+rbNJq92rYqplWLPmZsRLRqwIQ=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1128Fd2c060658
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 2 Feb 2021 02:15:39 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 2 Feb
 2021 02:15:38 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 2 Feb 2021 02:15:38 -0600
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1128FVZ5051822;
        Tue, 2 Feb 2021 02:15:35 -0600
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Nishanth Menon <nm@ti.com>, Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Vignesh R <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Dave Gerlach <d-gerlach@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: ti: Add bindings for AM642 SK
Date:   Tue, 2 Feb 2021 13:45:29 +0530
Message-ID: <20210202081530.14984-2-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210202081530.14984-1-lokeshvutla@ti.com>
References: <20210202081530.14984-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

AM642 StarterKit (SK) board is a low cost, small form factor board
designed for TI’s AM642 SoC.
Add DT binding documentation for AM642 SK.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 Documentation/devicetree/bindings/arm/ti/k3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index 393f94a64f8d..a9e7f981631e 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -37,6 +37,7 @@ properties:
         items:
           - enum:
               - ti,am642-evm
+              - ti,am642-sk
           - const: ti,am642
 
 additionalProperties: true
-- 
2.30.0

