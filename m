Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BEB7DF082F
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2019 22:22:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730074AbfKEVWn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Nov 2019 16:22:43 -0500
Received: from relay4-d.mail.gandi.net ([217.70.183.196]:43783 "EHLO
        relay4-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730066AbfKEVWn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Nov 2019 16:22:43 -0500
X-Originating-IP: 78.193.40.249
Received: from localhost (unknown [78.193.40.249])
        (Authenticated sender: kamel.bouhara@bootlin.com)
        by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 79EE9E0005;
        Tue,  5 Nov 2019 21:22:40 +0000 (UTC)
From:   Kamel Bouhara <kamel.bouhara@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Kamel Bouhara <kamel.bouhara@bootlin.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 1/2] dt-bindings: arm: at91: Document Kizbox2-2 board binding
Date:   Tue,  5 Nov 2019 22:22:33 +0100
Message-Id: <20191105212234.22999-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document devicetree's binding for the Kizbox2-2 board of
Overkiz SAS based on SAMA5D31 SoC.

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes in v2:
==============
	- Removed other kizbox2 boards as the main difference between
	them is the usart configuration, only add the two heads variant
	for now.
Changes in v3:
==============
	- Added R-b tag from Rob Herring.
---
 Documentation/devicetree/bindings/arm/atmel-at91.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
index c0869cb860f3..6dd8be401673 100644
--- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
+++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
@@ -80,6 +80,13 @@ properties:
           - const: atmel,sama5d3
           - const: atmel,sama5
 
+      - description: Overkiz kizbox2 board with two heads
+        items:
+          - const: overkiz,kizbox2-2
+          - const: atmel,sama5d31
+          - const: atmel,sama5d3
+          - const: atmel,sama5
+
       - items:
           - enum:
               - atmel,sama5d31
-- 
2.24.0.rc1

