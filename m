Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D05032A4B3
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2019 15:42:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726887AbfEYNmE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 May 2019 09:42:04 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:44423 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726864AbfEYNmD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 May 2019 09:42:03 -0400
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 5ED5AC0003;
        Sat, 25 May 2019 13:41:54 +0000 (UTC)
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 2/5] dt-bindings: vendor: Fix simtek vendor compatible
Date:   Sat, 25 May 2019 15:41:37 +0200
Message-Id: <20190525134140.6220-2-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190525134140.6220-1-maxime.ripard@bootlin.com>
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In the text file, simtek didn't have any description and apparently this
confused the conversion script. Fix the simtek entry and add a proper
description.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ec53162e900d..3e8806b8e385 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -787,8 +787,8 @@ patternProperties:
     description: Silergy Corp.
   "^siliconmitus,.*":
     description: Silicon Mitus, Inc.
-  "^simte,.*":
-    description: k
+  "^simtek,.*":
+    description: Cypress Semiconductor Corporation (Simtek Corporation)
   "^sirf,.*":
     description: SiRF Technology, Inc.
   "^sis,.*":
-- 
2.21.0

