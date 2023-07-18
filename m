Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EE78758630
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 22:42:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229604AbjGRUm3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 16:42:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229603AbjGRUm2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 16:42:28 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C150BD
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 13:42:28 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C495C60F57
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 20:42:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 970DCC433C7;
        Tue, 18 Jul 2023 20:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689712947;
        bh=cy3i7dJ04m4FchCQmRA+dadaz2JlT5XXd5cccf6nS1E=;
        h=From:To:Cc:Subject:Date:From;
        b=gLVgLxLG/btGL3GfRfqseCifVd0uSIJQWvcx6tq3TQ5ckftP1YcNSGDJ0DYCycdyp
         3//lZF7pbmIKRKLseY58lv4oo8lwvyuQymjk+dnAlzdPVW77CeO5cmZS6YxV8CGkAr
         PrFzymKQexwZlAuDcYNifiXMan7Coti7NE31N/eKkywlQLkr64iHcD6+6oY/eCUqIT
         H2ZM+lRK/UHlR7f1o9bo4Xuwi7C+miwRwR3gfHh8BVxfSGWHlzlzf38xor7FoOkgbQ
         NPm45CVi85rX3V644QMiUEUfJ6jKHbUsp83fFPG8kvHJzqQKVpZPsLxLoKxEdFeDvB
         Dar4Q+3tVhV1g==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org, krzysztof.kozlowskii+dt@linaro.org,
        conor+dt@kernel.org
Cc:     dinguyen@kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: reset: altr,modrst-offset is not required for arm64 SoCFPGA
Date:   Tue, 18 Jul 2023 15:42:17 -0500
Message-Id: <20230718204217.651081-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The property "altr,modrst-offset" is only applicable to arm32 SoCFPGA
platforms, thus it not required for all platforms.

While at it, update my email address.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 .../devicetree/bindings/reset/altr,rst-mgr.yaml   | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/reset/altr,rst-mgr.yaml b/Documentation/devicetree/bindings/reset/altr,rst-mgr.yaml
index 4379cec6b35a..7796408d2545 100644
--- a/Documentation/devicetree/bindings/reset/altr,rst-mgr.yaml
+++ b/Documentation/devicetree/bindings/reset/altr,rst-mgr.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Altera SOCFPGA Reset Manager
 
 maintainers:
-  - Dinh Nguyen <dinguyen@altera.com>
+  - Dinh Nguyen <dinguyen@kernel.org>
 
 properties:
   compatible:
@@ -32,9 +32,20 @@ properties:
 required:
   - compatible
   - reg
-  - altr,modrst-offset
   - '#reset-cells'
 
+if:
+  properties:
+    compatible:
+      contains:
+        const: altr,stratix10-rst-mgr
+then:
+  properties:
+    altr,modrst-offset: false
+else:
+  properties:
+    altr,modrst-offset: true
+
 additionalProperties: false
 
 examples:
-- 
2.25.1

