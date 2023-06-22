Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6443873AB86
	for <lists+devicetree@lfdr.de>; Thu, 22 Jun 2023 23:24:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230395AbjFVVYV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jun 2023 17:24:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230229AbjFVVYU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jun 2023 17:24:20 -0400
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::223])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E54AF1
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 14:24:19 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687469058;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=mezy1bg7+tal880bbvSbp01OokLFkCZLszHcc7Ojt4E=;
        b=pjMnLfD0EKiP+rLHHHMXla0lkiuJnt0N/AILesDXSKWzTVlZJNIWtw5Pdi/utmZcgtzj+t
        RIxX3zn0VTtAUbsWgpwa9Jr1+L4jclPqlcYDz627vt3PwFCjO87N5U0LpC4jF5EqTIssL7
        rHe6KYxF9tDJKYhiYdomAsSZv+jpKKgeWGEOARWVeaNJszoc1D6wMGtVvM7cYAVcNoQLzd
        N89Gc8s89ax1cv7pWL8uXe/B8Z76zsUiMkNrSTA0X8Wands8VMhoS98nRtfHA4+hg1OPvc
        DoIYCGY+QyBxR/5jYJd4PNaeYxTeEHDK2WTdQ/8G+jnbwH6YPo8wNc8+/4Uc3A==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 4803D60004;
        Thu, 22 Jun 2023 21:24:17 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        <linux-mtd@lists.infradead.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH] dt-bindings: mtd: Fix nand-controller.yaml license
Date:   Thu, 22 Jun 2023 23:24:15 +0200
Message-Id: <20230622212415.3583886-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Binding files should be dual licensed, this file was writtent with the
idea in mind of following the rules, but the SPDX tag did not reflect
that correctly. Fix the tag so we are sure this file is licensed
correctly.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 Documentation/devicetree/bindings/mtd/nand-controller.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
index 83a4fe4cc29d..28167c0cf271 100644
--- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
+++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
@@ -1,4 +1,4 @@
-# SPDX-License-Identifier: GPL-2.0
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/mtd/nand-controller.yaml#
-- 
2.34.1

