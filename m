Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D0BA326707
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 19:44:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229622AbhBZSom (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 13:44:42 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:49120 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229571AbhBZSok (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Feb 2021 13:44:40 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11QIh0dd073156;
        Fri, 26 Feb 2021 12:43:00 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1614364980;
        bh=DWQhJZQ4HjX5GjPvBH1RI3+Xv5H66w8JNXpzXJ81fRs=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=BddbUNaQVVoUZ+MQRaDyq4fEFJ7pWptTx4XWnsSo7er1MhdO/KouluFiYGYYpax7q
         688HBJ2qrzglXK4KsLa8hsAe1hTu2/dP1gfxpiU0oSWu71a8QqvmSu8MRvzliRXIvm
         zRNnoUVFHmGICC/OGwg1tlpFcbD3zntuQMQ1r120=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11QIh09h027914
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 26 Feb 2021 12:43:00 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 26
 Feb 2021 12:43:00 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 26 Feb 2021 12:43:00 -0600
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11QIgq42103387;
        Fri, 26 Feb 2021 12:42:57 -0600
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Nishanth Menon <nm@ti.com>, Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Vignesh R <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Dave Gerlach <d-gerlach@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v3 1/2] dt-bindings: arm: ti: Add bindings for AM642 SK
Date:   Sat, 27 Feb 2021 00:12:50 +0530
Message-ID: <20210226184251.26451-2-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210226184251.26451-1-lokeshvutla@ti.com>
References: <20210226184251.26451-1-lokeshvutla@ti.com>
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
Acked-by: Rob Herring <robh@kernel.org>
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

