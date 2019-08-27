Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 44D0C9EADF
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 16:25:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726140AbfH0OZu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 10:25:50 -0400
Received: from mail.kernel.org ([198.145.29.99]:48390 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725987AbfH0OZu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 27 Aug 2019 10:25:50 -0400
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 8828420828;
        Tue, 27 Aug 2019 14:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1566915950;
        bh=KPrw+88StpQqBdqXYCLjfxmDIU+ZK0KlJvUmwYmZcl8=;
        h=From:To:Cc:Subject:Date:From;
        b=mDK55b30eEDgGIoDrh2j8AGHXubsHe/1jVg3Z0pQBNzRxlP/posS7sF2RvdC/sQgA
         0arc7USrKVHqvUejYIMJVBWd5Ma7cJSNkSGVy4xT7MwwkY3z6KeRK6xFEAu2s66ZiC
         JRFbhauToPXiwLhXehWLbKpl/XSkfFyVdDxtviWU=
From:   Maxime Ripard <mripard@kernel.org>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     alsa-devel@alsa-project.org, Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/5] dt-bindings: sound: sun4i-spdif: Fix dma-names warning
Date:   Tue, 27 Aug 2019 16:25:43 +0200
Message-Id: <20190827142547.14577-1-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

Even though the H6 compatible has been properly added, the exeption for the
number of DMA channels hasn't been updated, leading in a validation
warning.

Fix this.

Fixes: b20453031472 ("dt-bindings: sound: sun4i-spdif: Add Allwinner H6 compatible")
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml  | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml
index e0284d8c3b63..38d4cede0860 100644
--- a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml
@@ -70,7 +70,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: allwinner,sun8i-h3-spdif
+            enum:
+              - allwinner,sun8i-h3-spdif
+              - allwinner,sun50i-h6-spdif
 
     then:
       properties:
-- 
2.21.0

