Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 58996277C8
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2019 10:14:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727466AbfEWIOW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 04:14:22 -0400
Received: from relay3-d.mail.gandi.net ([217.70.183.195]:54225 "EHLO
        relay3-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727708AbfEWIOW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 May 2019 04:14:22 -0400
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr [90.88.22.185])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 89C4160011;
        Thu, 23 May 2019 08:14:16 +0000 (UTC)
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org,
        Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH] dt-bindings: Add vendor prefix for Espressif
Date:   Thu, 23 May 2019 10:14:15 +0200
Message-Id: <20190523081415.29870-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Espressif Systems DT vendor prefix. That prefix has been used for quite
some time for WiFi chips, but has never been documented.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c0881d51aa91..19cc3240a445 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -277,6 +277,8 @@ patternProperties:
     description: Ecole Polytechnique Fédérale de Lausanne
   "^epson,.*":
     description: Seiko Epson Corp.
+  "^esp,.*":
+    description: Espressif Systems Co. Ltd.
   "^est,.*":
     description: ESTeem Wireless Modems
   "^ettus,.*":
-- 
2.21.0

