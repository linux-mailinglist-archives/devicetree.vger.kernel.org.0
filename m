Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0D3845E174
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 11:54:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726628AbfGCJy1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 05:54:27 -0400
Received: from relay5-d.mail.gandi.net ([217.70.183.197]:40581 "EHLO
        relay5-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726518AbfGCJyZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 05:54:25 -0400
X-Originating-IP: 185.94.189.188
Received: from localhost (unknown [185.94.189.188])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 0DCC71C0398;
        Wed,  3 Jul 2019 09:54:22 +0000 (UTC)
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     devicetree@vger.kernel.org,
        Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH] dt-bindings: nvmem: SID: Fix the examples node names
Date:   Wed,  3 Jul 2019 11:54:21 +0200
Message-Id: <20190703095421.11798-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that the examples are validated, the examples in the SID binding
generates an error since the node names aren't one of the valid ones.

Let's switch for one that is ok.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml b/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
index c9efd6e2c134..1084e9d2917d 100644
--- a/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
+++ b/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
@@ -37,13 +37,13 @@ required:
 
 examples:
   - |
-    sid@1c23800 {
+    efuse@1c23800 {
         compatible = "allwinner,sun4i-a10-sid";
         reg = <0x01c23800 0x10>;
     };
 
   - |
-    sid@1c23800 {
+    efuse@1c23800 {
         compatible = "allwinner,sun7i-a20-sid";
         reg = <0x01c23800 0x200>;
     };
-- 
2.21.0

