Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A700750BF3
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 17:11:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232102AbjGLPK7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 11:10:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232871AbjGLPK5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 11:10:57 -0400
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::226])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABDCA1BE2
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 08:10:46 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2E9D4C0005;
        Wed, 12 Jul 2023 15:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1689174645;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=XS/qu6lWg8ZcxRp4xgP1j4CX9yqUYefgPxA7VZYp8fQ=;
        b=jLrEx7Attt8FZMi2jUL6DkD027X8VrHdH6zz75PggAo/kbY3zRSzQ/s7nzWgK3YkQeeHgb
        E1yUKhuOo+wzR+formGSWEZGYRtk/pzl+yqt609F2rhGbPoWClY6FYsfZLGFkrCWdpQeVs
        QkiEAgloPMzE72pVDFrarnvSm+lTti89Urp7p0qbGVF9GDAB0ibMggSO5r4feeT6yheGp7
        KE/+Z1EBfNwhViUsPlmV8ykw0LLuzwjJ7T+KdfQ//He4hxRoFin1W7Iv8AzGe1Tu9PjUSB
        i3FfimdC1lS8gfljOqQT1rLUylAgtcAJmMMRh+tveML177T7KBNQGBsuFvbp5g==
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
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Maxime Ripard <mripard@kernel.org>
Subject: [PATCH v2] dt-bindings: mtd: Fix nand-controller.yaml license
Date:   Wed, 12 Jul 2023 17:10:42 +0200
Message-Id: <20230712151042.433593-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: miquel.raynal@bootlin.com
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Binding files should be dual licensed. This file was initially written
as a .txt file with no specific license, so was implicitely
GPLv2. Significant part of this file and its conversion into yaml were
written by Bootlin employees which agree to comply with the rules
regarding the dual licensing so let's fix the SPDX tag to reflect the
correct license by changing it from GPL to GPL + BSD-2-Clause.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Acked-by: Maxime Ripard <mripard@kernel.org>

---

* Collect Maxime's tag.
* Fix a typo in the commit message.
* Reword the commit message to give more context.
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

