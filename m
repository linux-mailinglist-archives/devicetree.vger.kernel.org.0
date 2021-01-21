Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E7F82FED54
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 15:49:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730362AbhAUOso (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 09:48:44 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:52014 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731320AbhAUOlM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 09:41:12 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LEdWZG095986;
        Thu, 21 Jan 2021 08:39:32 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611239972;
        bh=/zfwdmtsgCbwF7EOU7kqKpOd0qWZrVEFZl/4CTCfS4c=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=lyHdUjz31g5SjZmbIbEJuc9kTAPvbUT8qiuqtXPG3kFcKOeQYEFZ8sBFKdeP2nuZY
         n5Tl0a1xoqQH6ByICs+J1JBeSISg++7qo6FQhBUuxyr8UStMpfEw9IaJfvBWOyqUGC
         ze7DOzCbmQSUFEtyDbrr91ZfPYQQ00BISjVwKtlE=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LEdWvD049376
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 08:39:32 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 08:39:32 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 08:39:32 -0600
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LEdOxs130369;
        Thu, 21 Jan 2021 08:39:29 -0600
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Nishanth Menon <nm@ti.com>, Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Vignesh R <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Dave Gerlach <d-gerlach@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH 1/2] dt-bindings: arm: ti: Add bindings for AM642 SK
Date:   Thu, 21 Jan 2021 20:09:23 +0530
Message-ID: <20210121143924.26213-2-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210121143924.26213-1-lokeshvutla@ti.com>
References: <20210121143924.26213-1-lokeshvutla@ti.com>
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

