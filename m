Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9A748A0235
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 14:52:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726272AbfH1MwN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Aug 2019 08:52:13 -0400
Received: from mail.kernel.org ([198.145.29.99]:53986 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726270AbfH1MwN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Aug 2019 08:52:13 -0400
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 5A61322CF5;
        Wed, 28 Aug 2019 12:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1566996732;
        bh=f0oVsEe2akGYYam8EhAX8s6B2kHn5fJitxnPXMAOkTA=;
        h=From:To:Cc:Subject:Date:From;
        b=S5AngWA1PzCOam+4PWOsfbr6VbmV+aHR4tximQXPeXjbZR6+frGQbtJENY9dUvkp/
         n7cPYhlKodOmSG2rq6YbzvDTY8fRKfkOOvR1RTAWQLDLofW2jsWvhIKS0NsjZsG0K0
         G4v6KnTGJQGlUNIwxTv3IsUkv19iK8jjKOzggHmo=
From:   Maxime Ripard <mripard@kernel.org>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     alsa-devel@alsa-project.org, Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/5] ASoC: dt-bindings: sun4i-spdif: Fix dma-names warning
Date:   Wed, 28 Aug 2019 14:52:05 +0200
Message-Id: <20190828125209.28173-1-mripard@kernel.org>
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

Changes from v1:
  - Fix subject prefix
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

