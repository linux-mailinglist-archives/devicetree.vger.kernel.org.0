Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 01EB02A4B0
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2019 15:41:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726880AbfEYNl4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 May 2019 09:41:56 -0400
Received: from relay9-d.mail.gandi.net ([217.70.183.199]:52985 "EHLO
        relay9-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726864AbfEYNl4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 May 2019 09:41:56 -0400
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 68547FF805;
        Sat, 25 May 2019 13:41:42 +0000 (UTC)
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 1/5] dt-bindings: vendor: Escape single quote
Date:   Sat, 25 May 2019 15:41:36 +0200
Message-Id: <20190525134140.6220-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Single quotes need to be escaped in YAML, make sure it's the case.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 19cc3240a445..ec53162e900d 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -672,7 +672,7 @@ patternProperties:
   "^plantower,.*":
     description: Plantower Co., Ltd
   "^plathome,.*":
-    description: Plat'Home Co., Ltd.
+    description: Plat\'Home Co., Ltd.
   "^plda,.*":
     description: PLDA
   "^plx,.*":
-- 
2.21.0

