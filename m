Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 19E27DC6CD
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2019 16:04:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439626AbfJRODR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Oct 2019 10:03:17 -0400
Received: from relay11.mail.gandi.net ([217.70.178.231]:60279 "EHLO
        relay11.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2501886AbfJRODQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Oct 2019 10:03:16 -0400
Received: from localhost (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
        (Authenticated sender: kamel.bouhara@bootlin.com)
        by relay11.mail.gandi.net (Postfix) with ESMTPSA id 96EBE100007;
        Fri, 18 Oct 2019 14:03:13 +0000 (UTC)
From:   Kamel Bouhara <kamel.bouhara@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: [PATCH 1/2] dt-bindings: arm: at91: Document Kizboxmini boards binding
Date:   Fri, 18 Oct 2019 16:03:03 +0200
Message-Id: <20191018140304.31547-2-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191018140304.31547-1-kamel.bouhara@bootlin.com>
References: <20191018140304.31547-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document devicetree's bindings for the SAM9G25 Kizbox Mini boards of
Overkiz SAS.

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
---
 .../devicetree/bindings/arm/atmel-at91.yaml        | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
index 1e72e3e6e025..666462988179 100644
--- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
+++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
@@ -35,6 +35,20 @@ properties:
               - atmel,at91sam9x60
           - const: atmel,at91sam9
 
+      - description: Overkiz kizbox Mini Mother Board
+        items:
+          - const: overkiz,kizboxmini-mb
+          - const: atmel,at91sam9g25
+          - const: atmel,at91sam9x5
+          - const: atmel,at91sam9
+
+      - description: Overkiz kizbox Mini RailDIN
+        items:
+          - const: overkiz,kizboxmini-rd
+          - const: atmel,at91sam9g25
+          - const: atmel,at91sam9x5
+          - const: atmel,at91sam9
+
       - items:
           - enum:
               - atmel,at91sam9g15
-- 
2.23.0

